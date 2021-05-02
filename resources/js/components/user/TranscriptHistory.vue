<script>
/*
 * Primary Maintainers: Alex Benasutti
 *
 * Handles transcript history display per audio file
 */

import {ref} from "vue";
import {CheckIcon} from "@heroicons/vue/outline/esm";
import TranscriptHistoryCard from "./components/TranscriptHistoryCard";

export default {
    components: {
        TranscriptHistoryCard,
        CheckIcon
    },
    setup() {
        const el = document.getElementById('ts-history-component');
        if (el === null) {
            return null;
        }

        const data = el.dataset;
        const history = ref(JSON.parse(data.history));
        const audio = ref(JSON.parse(data.audio));

        // console.log("User type:", window.TAP.userType);

        return {
            audio,
            history
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
        <div class="tw-flex tw-flex-col tw-justify-center tw-items-center tw-h-64 tw-p-8" v-if="history.length < 1">
            <div class="text-center">
                <h2 class="tw-text-xl tw-font-bold tw-mb-2">No transcripts found.</h2>
                <p>Any edits to this audio file's transcript will appear here.</p>
            </div>
        </div>
        <div class="tw-flex tw-flex-wrap" v-else>
            <TranscriptHistoryCard
                v-bind="{ item }"
                v-for="item in history"
                :key="item.id"
            />
        </div>
    </div>
</template>
