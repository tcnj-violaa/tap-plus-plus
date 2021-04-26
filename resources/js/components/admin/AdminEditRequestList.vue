<script>
/*
 * Primary Maintainer: Alex Viola
 *
 * Handles admin view of user edit requests
 */

import {ref} from "vue";
import {CheckIcon} from "@heroicons/vue/outline/esm";

export default {
    components: {
        CheckIcon
    },
    setup() {
        const el = document.getElementById('admin-edit-rq-component');
        if (el === null) {
            return null;
        }

        const data = el.dataset;
        const requests = ref(JSON.parse(data.requests));

        console.log(requests.value);

        return {
            requests
        }
    }
}
</script>

<template>
    <div class="container">
        <div class="tw-flex tw-flex-col tw-justify-center tw-items-center tw-h-64 tw-p-8" v-if="requests.length < 1">
            <CheckIcon class="text-success h-48" />
            <div class="text-center">
                <h2 class="tw-text-xl tw-font-bold tw-mb-2">No pending requests.</h2>
            </div>
        </div>
        <div v-else>
            <div class="tw-flex tw-flex-wrap tw--m-2">
                <a class="tw-m-2 tw-w-full hover:tw-no-underline" :href="'/requests/' + item.id" v-for="item in audio" :key="item.id">
                    <div class="card bg-light border-secondary tw-transition-shadow hover:tw-shadow-md">
                        <div class="card-body">
                            <h6 class="card-title tw-text-black mb-0 tw-text-base">{{ item.name }}</h6>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</template>
