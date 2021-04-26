<script>
/*
 * Primary Maintainers: Raymond Chow, Alex Benasutti
 *
 * Handles edit request card display per audio file
 */

import {ref} from "vue";
import {CheckIcon} from "@heroicons/vue/outline/esm";
import {XIcon} from "@heroicons/vue/outline/esm";

export default {
    components: {
        CheckIcon,
        XIcon
    },
    props: {
        item: Object
    },
    setup(props) {
        const diff = ref(null);
        const loading = ref(false);
        const submitting = ref(false);
        const show = ref(false);

        const toggleDiff = async (id) => {
            if (diff.value !== null) {
                show.value = !show.value;
                return;
            }

            try {
                if (loading.value) return;
                loading.value = true;

                let response = await axios.get('/api/audio/requests/get-diff?user_edit_request_id=' + id);
                diff.value = response.data;
                show.value = true;
            }
            catch (e) {
                alert("Unable to obtain diff.\nError:" + e);
                console.log(e);
            }
            finally {
                loading.value = false;
            }
        };

        const toDateTimeString = (time) => {
            time = time.replace(' ', 'T');
            return (new Date(time)).toLocaleString("en-US");
        };

        const request = async (id, type) => {
            if (submitting.value) return;
            submitting.value = true;
            try {
                let response = await axios.post('/api/audio/requests/set-status?user_edit_request_id=' + id + "&type=" + type);
                if (response.data.success) {
                    window.location.reload();
                } else {
                    alert(response.data.message);
                }
            }
            catch (e) {
                alert("Unable to save request status.\nError: " + e);
                console.log(e);
            }
            finally {
                submitting.value = false;
            }
        };

        return {
            loading,
            diff,
            show,
            submitting,
            request,
            toggleDiff,
            toDateTimeString,
            userType: window.TAP.userType
        }
    }
}
</script>

<template>
    <div class="tw-w-full mb-4">
        <a
            class="tw-w-full hover:tw-no-underline tw-text-black hover:tw-text-black"
            href="#"
            :id="'uer-' + item.id"
            @click.prevent="toggleDiff(item.id)"
        >
            <div class="card bg-light border-secondary tw-transition-shadow hover:tw-shadow-md">
                <div class="card-body">
                    <h6 class="tw-flex tw-justify-between card-title tw-text-black mb-0 tw-text-base">
                        <span><b>{{ item.user_name }}</b></span>
                        <span>{{ toDateTimeString(item.create_time) }}</span>
                    </h6>
                    <div v-if="item.edit_comment !== null && item.edit_comment !== ''">
                        <strong>Edit Comment:</strong>
                        {{ item.edit_comment }}
                    </div>
                    <div v-else>
                        <i>No edit comment left.</i>
                    </div>
                    <div class="tw-mt-2" v-if="userType >= 2">
                        <button @click.prevent.stop="request(item.id, 'approve')" :disabled="submitting" type="button" class="btn btn-success mr-2 tw-inline-flex tw-items-center">
                            <CheckIcon class="tw-h-6 tw-mr-1" /> Approve
                        </button>
                        <button @click.prevent.stop="request(item.id, 'deny')" :disabled="submitting" type="button" class="btn btn-danger tw-inline-flex tw-items-center">
                            <XIcon class="tw-h-6 tw-mr-1" /> Deny
                        </button>
                    </div>
                </div>
            </div>
        </a>

        <div class="tw-w-full mt-2" v-if="!loading && diff !== null && show">
            <fragment v-html="diff"></fragment>

            <a :href="'#uer-' + item.id" class="tw-text-blue-600">Jump Back to Top</a>
        </div>
        <div class="tw-w-full" v-else-if="loading && diff === null">
            <div class="tw-flex tw-flex-col tw-justify-center tw-items-center tw-h-32" v-if="loading">
                <div class="spinner-border tw-w-16 tw-h-16" role="status"></div>
                <strong class="mt-4">Loading...</strong>
            </div>
        </div>
    </div>
</template>
