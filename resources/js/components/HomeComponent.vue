<script>
/*
 * Primary Maintainer: Raymond Chow
 *
 * Handles filter and audio file card display
 */

import {onMounted, ref, watch} from "vue";
import {CancelToken} from 'axios';
import {ExclamationIcon} from "@heroicons/vue/outline/esm";
import EventBus from '../event-bus';

let cancelSource = null;

export default {
    components: {
        ExclamationIcon
    },
    setup() {
        const el = document.getElementById('home-component');
        if (el === null) {
            return null;
        }
        const data = el.dataset;

        const page = ref(1);
        const searchQuery = ref('');
        const loading = ref(false);
        const audio = ref(JSON.parse(data.audio));
        const filters = ref(JSON.parse(data.filters));

        const filterStates = ref({});

        const reloadAudioData = async () => {
            if (loading.value && cancelSource !== null) {
                cancelSource.cancel('');
            }

            loading.value = true;

            let tags = [];

            let keys = Object.keys(filterStates.value);
            for (let i = 0; i < keys.length; i++) {
                if (filterStates.value[keys[i]]) {
                    tags.push(parseInt(keys[i]));
                }
            }

            try {
                cancelSource = CancelToken.source();
                let response = await axios.post(
                    '/api/audio/list?page=' + page.value,
                    {
                        tags,
                        search: searchQuery.value
                    },
                    {
                        cancelToken: cancelSource.token
                    }
                );
                audio.value = response.data;
            }
            catch (e) {
                if (!axios.isCancel(e)) {
                    alert("Unable to load audio data.\nError:" + e);
                    console.error(e);
                }
            }
            finally {
                loading.value = false;
            }
        };

        onMounted(() => {
            const categoryKeys = Object.keys(filters.value);
            for (let i = 0; i < categoryKeys.length; i++) {
                const tags = filters.value[categoryKeys[i]];
                for (let j = 0; j < tags.length; j++) {
                    filterStates.value[tags[j].id] = false;
                }
            }

            watch(filterStates, () => {
                reloadAudioData();
            }, {deep: true});
        });

        EventBus.on('search', value => {
            searchQuery.value = value;
            page.value = 1;
            reloadAudioData();
        });

        const incrementPage = (amount) => {
            if (audio.value.page + amount < 1 || audio.value.page + amount > audio.value.total_pages) return;

            page.value += amount;

            reloadAudioData();
        };

        return {
            audio,
            filters,
            filterStates,
            loading,
            incrementPage,
            page
        }
    }
}
</script>

<template>
    <div class="container-fluid 2xl:tw-max-w-[90rem]">
        <div class="row">
            <div class="col-md-4 col-lg-2 tw-pt-4 tw-border-r tw-border-r-0 md:tw-border-r">
                <div class="tw-mb-4" v-for="(tags, categoryName) in filters" :key="categoryName">
                    <div class="tw-font-bold">{{ categoryName }}</div>
                    <div class="tw-flex" v-for="tag in tags" :key="tag.id">
                        <div class="custom-control custom-checkbox tw-w-full">
                            <input type="checkbox" class="custom-control-input" :id="'check-tag-id-' + tag.id" name="remember" v-model="filterStates[tag.id]">
                            <label class="custom-control-label tw-w-full" :for="'check-tag-id-' + tag.id">{{ tag.name }}</label>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-lg-10">
                <div class="tw-flex tw-flex-col tw-justify-center tw-items-center tw-h-64" v-if="loading">
                    <div class="spinner-border tw-w-16 tw-h-16" role="status"></div>
                    <strong class="mt-4">Loading...</strong>
                </div>
                <div v-else>
                    <div class="tw-flex tw-flex-col tw-justify-center tw-items-center tw-h-64 tw-p-8" v-if="audio.data.length < 1">
                        <ExclamationIcon class="text-warning h-48" />
<!--                        <span class="tw-text-8xl tw-mb-8">not an emoji</span>-->
                        <div class="text-center">
                            <h2 class="tw-text-xl tw-font-bold tw-mb-2">No results found.</h2>
                            <p>Please consider trying a different combination of filters or a different search pattern.</p>
                        </div>
                    </div>
                    <div class="tw-flex tw-flex-wrap tw-m-2" v-else>
                        <a class="tw-m-2 tw-w-full hover:tw-no-underline" :href="'/audio/' + item.id" v-for="item in audio.data" :key="item.id">
                            <div class="card bg-light border-secondary tw-transition-shadow hover:tw-shadow-md">
                                <div class="card-body">
                                    <h6 class="card-title tw-text-black mb-0 tw-text-base">{{ item.name }}</h6>
                                    <!--<p class="card-text">
                                        <small class="text-muted">{{ item.name }}</small>
                                    </p>-->
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="tw-bg-white tw-px-4 tw-py-3 tw-flex tw-items-center tw-justify-between sm:tw-px-6 mt-4">
                        <button
                           class="tw-relative tw-inline-flex tw-items-center tw-px-4 tw-py-2 tw-border tw-border-gray-300 tw-text-sm tw-font-medium tw-rounded-md tw-text-gray-700 tw-bg-white hover:tw-no-underline hover:tw-text-gray-700"
                           :class="[page - 1 < 1 ? 'tw-cursor-default tw-opacity-75' : 'hover:tw-bg-gray-50']"
                           :disabled="page - 1 < 1"
                           @click.prevent="incrementPage(-1)"
                        >
                            Previous
                        </button>
                        <span class="tw-text-center" v-if="audio.total_pages > 0 && audio.data.length > 0">
                            Page {{ audio.page }} of {{ audio.total_pages }}
                            <span class="tw-text-gray-500 ml-2">
                                ({{ audio.total_results }} total)
                            </span>
                        </span>
                        <button
                           class="tw-ml-3 tw-relative tw-inline-flex tw-items-center tw-px-4 tw-py-2 tw-border tw-border-gray-300 tw-text-sm tw-font-medium tw-rounded-md tw-text-gray-700 tw-bg-white hover:tw-no-underline hover:tw-text-gray-700"
                           :class="[page + 1 > audio.total_pages ? 'tw-cursor-default tw-opacity-75' : 'hover:tw-bg-gray-50']"
                           :disabled="page + 1 > audio.total_pages"
                           @click.prevent="incrementPage(1)"
                        >
                            Next
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
