<script>
/*
 * Primary Maintainers: Alex Benasutti, Raymond Chow
 *
 * Handles user edit request display per audio file
 */

import {ref} from "vue";
import {CheckIcon} from "@heroicons/vue/outline/esm";
import EditRequestCard from "./components/EditRequestCard";

export default {
    components: {
        EditRequestCard,
        CheckIcon
    },
    setup() {
        const el = document.getElementById('user-edit-rq-component');
        if (el === null) {
            return null;
        }

        const data = el.dataset;
        const requests = ref(JSON.parse(data.requests));
        const audio = ref(JSON.parse(data.audio));

        console.log("User type:", window.TAP.userType);

        return {
            audio,
            requests
        }
    }
}
</script>

<template>
    <div class="container">
        <div class="container text-center">
            <p class="lead tw-text-2xl tw-font-bold mt-3"><b><a class="tw-text-blue-600" :href="'/audio/' + audio.id">{{ audio.name }}</a></b></p>
            <hr class="my-2">
        </div>
        <div class="tw-flex tw-flex-col tw-justify-center tw-items-center tw-h-64 tw-p-8" v-if="requests.length < 1">
            <CheckIcon class="text-success h-48" />
            <div class="text-center">
                <h2 class="tw-text-xl tw-font-bold tw-mb-2">No pending requests.</h2>
                <p>If you see an error within this file's transcript, feel free to make your own edit request!</p>
            </div>
        </div>
        <div class="tw-flex tw-flex-wrap tw--m-2" v-else>
            <EditRequestCard
                v-bind="{ item }"
                v-for="item in requests"
                :key="item.id"
            />
        </div>
    </div>
</template>
