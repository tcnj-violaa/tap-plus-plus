<script>
/*
 * Primary Maintainer: Alex Viola
 *
 * Handles admin view of user edit requests
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
        const el = document.getElementById('admin-edit-rq-component');
        if (el === null) {
            return null;
        }

        const data = el.dataset;
        const requests = ref(JSON.parse(data.requests));

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
                <h2 class="tw-text-xl tw-font-bold tw-mb-2">No requests found.</h2>
                <p>If someone creates an edit request, it will show up here.</p>
            </div>
        </div>
        <div class="tw-flex tw-flex-wrap tw-m-2 tw-mt-4" v-else>
            <h2 class="tw-text-xl tw-font-bold tw-mb-2">All Requests</h2>
            <EditRequestCard
                v-bind="{ item }"
                v-for="item in requests"
                :key="item.id"
            />
        </div>
    </div>
</template>
