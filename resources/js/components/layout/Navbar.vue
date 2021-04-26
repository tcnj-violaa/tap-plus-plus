<script>
import { ref } from 'vue';
import { Disclosure, DisclosureButton, DisclosurePanel, Menu, MenuButton, MenuItem, MenuItems } from '@headlessui/vue';
import { SearchIcon } from '@heroicons/vue/solid';
import { UserIcon, MenuIcon, XIcon, ChevronDownIcon } from '@heroicons/vue/outline';
import EventBus from '../../event-bus';

const navigation = [
    { name: 'Dashboard', href: '#' },
    { name: 'Team', href: '#' },
    { name: 'Projects', href: '#' },
    { name: 'Calendar', href: '#' },
];

const unauthorizedNavigation = [
    { name: 'Login', href: '/auth/login' },
    { name: 'Register', href: '/auth/register' }
];

const userDropdown = [
    { name: 'Sign out', href: '#', 'action': 'logout' },
];

export default {
    props: [
        'dataJson'
    ],
    components: {
        Disclosure,
        DisclosureButton,
        DisclosurePanel,
        Menu,
        MenuButton,
        MenuItem,
        MenuItems,
        UserIcon,
        MenuIcon,
        SearchIcon,
        XIcon,
        ChevronDownIcon,
    },
    setup() {
        const open = ref(false);
        const loggedIn = ref(false);
        const user = ref(null);

        const navbarEl = document.getElementById('navbar');
        if (navbarEl === null) {
            console.error('#navbar is missing, goodbye');
            return null;
        }

        const data = JSON.parse(navbarEl.dataset.json);

        if (data !== null && data.user !== null) {
            user.value = data.user;
            loggedIn.value = true;
        }

        const loggingOut = ref(false);
        const onUserDropdownClick = (event, item) => {
            const action = item.action;
            if (typeof action === 'undefined')
                return false;

            event.preventDefault();

            switch (action) {
                case 'logout':
                    if (!loggingOut.value) {
                        // don't post multiple times
                        loggingOut.value = true;

                        axios.post('/auth/logout')
                            .then((response) => {
                                if (response.data.success) {
                                    window.location.reload();
                                }
                            })
                            .catch((error) => {
                                alert("Unable to sign out.\nError:" + error);
                            })
                            .finally(() => {
                                loggingOut.value = false;
                            });
                    }
                    break;
                default:
                    alert(`Unhandled dropdown action ${action}.`);
                    break;
            }

            return true;
        };

        const getSearchQuery = () => {
            const params = (new URL(document.location)).searchParams;
            if (params.has('search'))
                return params.get('search');
            return ''; // nope
        };
        const homeComponentEl = document.getElementById('home-component');
        const searchQuery = ref(homeComponentEl !== null ? getSearchQuery() : '');
        const onSearch = () => {
            if (homeComponentEl === null) {
                window.location.href = '/?search=' + encodeURIComponent(searchQuery.value);
            } else {
                EventBus.emit('search', searchQuery.value);
            }
        };

        return {
            loggedIn,
            user,
            navigation,
            userDropdown,
            open,
            unauthorizedNavigation,
            onUserDropdownClick,
            searchQuery,
            onSearch
        }
    },
}
</script>

<template>
    <Disclosure as="header" class="tw-bg-gray-800 tw-shadow-md" v-slot="{ open }">
        <div class="tw-max-w-7xl tw-mx-auto tw-px-2 sm:tw-px-4 lg:tw-divide-y lg:tw-divide-gray-700 lg:tw-px-8">
            <div class="tw-relative tw-h-16 tw-flex tw-justify-between">
                <div class="tw-relative tw-z-10 tw-px-2 tw-flex lg:tw-px-0">
                    <div class="tw-flex-shrink-0 tw-flex tw-items-center">
                        <a href="/">
                            <img class="tw-block tw-h-10 tw-w-auto" src="/img/Updated-Trentoniana-Logo.png" alt="TAP++">
                        </a>
                    </div>
                </div>
                <div class="tw-relative tw-z-0 tw-flex-1 tw-px-2 tw-flex tw-items-center tw-justify-center sm:tw-absolute sm:tw-inset-0">
                    <div class="tw-w-full sm:tw-max-w-xs">
                        <label for="search" class="tw-sr-only">Search</label>
                        <div class="tw-relative">
                            <div class="tw-pointer-events-none tw-absolute tw-inset-y-0 tw-left-0 tw-pl-3 tw-flex tw-items-center">
                                <SearchIcon class="tw-h-5 tw-w-5 tw-text-gray-400" aria-hidden="true" />
                            </div>
                            <form @submit.prevent="onSearch">
                                <input id="search"
                                       name="search"
                                       class="tw-block tw-w-full tw-bg-gray-700 tw-border tw-border-transparent tw-rounded-md tw-py-2 tw-pl-10 tw-pr-3 tw-text-sm tw-placeholder-gray-400 tw-text-gray-400 focus:tw-outline-none focus:tw-bg-white focus:tw-border-white focus:tw-ring-white focus:tw-text-gray-900 focus:tw-placeholder-gray-500 sm:tw-text-sm"
                                       placeholder="Search" type="search"
                                       v-model="searchQuery"
                                >
                            </form>
                        </div>
                    </div>
                </div>
                <div class="tw-relative tw-z-10 tw-flex tw-items-center lg:tw-hidden">
                    <!-- Mobile menu button -->
                    <DisclosureButton class="tw-rounded-md tw-p-2 tw-inline-flex tw-items-center tw-justify-center tw-text-gray-400 hover:tw-bg-gray-700 hover:tw-text-white focus:tw-outline-none focus:tw-ring-2 focus:tw-ring-inset focus:tw-ring-white">
                        <span class="tw-sr-only">Open menu</span>
                        <MenuIcon v-if="!open" class="tw-block tw-h-6 tw-w-6" aria-hidden="true" />
                        <XIcon v-else class="tw-block tw-h-6 tw-w-6" aria-hidden="true" />
                    </DisclosureButton>
                </div>
                <div class="tw-hidden lg:tw-relative lg:tw-z-10 lg:tw-ml-4 lg:tw-flex lg:tw-items-center">
                    <!-- Profile dropdown -->
                    <Menu as="div" class="tw-flex-shrink-0 tw-relative tw-ml-4" v-if="loggedIn" v-slot="{ open }">
                        <div>
                            <MenuButton class="tw-bg-gray-800 tw-rounded-full tw-flex tw-text-sm tw-text-gray-100 hover:tw-text-white tw-opacity-95 hover:tw-opacity-100 focus:tw-outline-none focus:tw-ring-0">
                                <span class="tw-sr-only">Open user menu</span>
                                <div class="tw-flex tw-items-center">
                                    <UserIcon class="tw-h-4 tw-mr-1" />
                                    {{ user.name }}
                                    <ChevronDownIcon class="tw-w-2 tw-h-2 tw-ml-1 tw-transform tw-transition-transform" :class="[open ? 'tw-rotate-90' : '']" />
                                </div>
                            </MenuButton>
                        </div>
                        <Transition enter-active-class="tw-transition tw-ease-out tw-duration-100" enter-from-class="tw-transform tw-opacity-0 tw-scale-95" enter-to-class="tw-transform tw-opacity-100 tw-scale-100" leave-active-class="tw-transition tw-ease-in tw-duration-75" leave-from-class="tw-transform tw-opacity-100 tw-scale-100" leave-to-class="tw-transform tw-opacity-0 tw-scale-95">
                            <MenuItems class="tw-origin-top-right tw-absolute tw-right-0 tw-mt-2 tw-w-48 tw-rounded-md tw-shadow-lg tw-bg-white tw-ring-1 tw-ring-black tw-ring-opacity-5 tw-py-1 focus:tw-outline-none">
                                <MenuItem v-for="item in userDropdown" :key="item.name" v-slot="{ active }">
                                    <a
                                        @click="onUserDropdownClick($event, item)"
                                        :href="item.href"
                                        :class="[active ? 'tw-bg-gray-100' : '', 'tw-block tw-py-2 tw-px-4 tw-text-sm tw-text-gray-700 hover:tw-no-underline hover:tw-no-underline']"
                                    >
                                        {{ item.name }}
                                    </a>
                                </MenuItem>
                            </MenuItems>
                        </Transition>
                    </Menu>
                    <div class="tw-flex-shrink-0 tw-relative tw-ml-4 lg:tw-space-x-2" v-else>
                        <a :href="item.href" class="tw-text-gray-300 hover:tw-bg-gray-700 hover:tw-text-white tw-rounded-md tw-py-2 tw-px-3 tw-inline-flex tw-items-center tw-text-sm tw-font-medium hover:tw-no-underline" :key="item.name" v-for="item in unauthorizedNavigation">
                            {{ item.name }}
                        </a>
                    </div>
                </div>
            </div>
<!--            <nav class="tw-hidden lg:tw-py-2 lg:tw-flex lg:tw-space-x-2" aria-label="Global">-->
<!--                <a v-for="item in navigation" :key="item.name" :href="item.href" :class="['tw-text-gray-300 hover:tw-bg-gray-700 hover:tw-text-white', 'tw-rounded-md tw-py-2 tw-px-3 tw-inline-flex tw-items-center tw-text-sm tw-font-medium hover:tw-no-underline']">-->
<!--                    {{ item.name }}-->
<!--                </a>-->
<!--            </nav>-->
        </div>

        <DisclosurePanel as="nav" class="lg:tw-hidden" aria-label="Global">
<!--            <div class="tw-pt-2 tw-pb-3 tw-px-2 tw-space-y-1">-->
<!--                <a v-for="item in navigation" :key="item.name" :href="item.href" :class="['tw-text-gray-300 hover:tw-bg-gray-700 hover:tw-text-white', 'tw-block tw-rounded-md tw-py-2 tw-px-3 tw-text-base tw-font-medium hover:tw-no-underline']">{{ item.name }}</a>-->
<!--            </div>-->
            <div class="tw-border-t tw-border-gray-700 tw-pt-4 tw-pb-3" v-if="loggedIn">
                <div class="tw-px-4 tw-flex tw-items-center">
                    <UserIcon class="tw-h-6 tw-mr-1 tw-text-white" />
                    <div class="tw-text-base tw-font-medium tw-text-white">{{ user.name }}</div>
                </div>
                <div class="tw-mt-3 tw-px-2 tw-space-y-1">
                    <a v-for="item in userDropdown"
                       @click="onUserDropdownClick($event, item)"
                       :key="item.name"
                       :href="item.href"
                       class="tw-block tw-rounded-md tw-py-2 tw-px-3 tw-text-base tw-font-medium tw-text-gray-400 hover:tw-bg-gray-700 hover:tw-text-white hover:tw-no-underline"
                    >
                        {{ item.name }}
                    </a>
                </div>
            </div>
            <div class="tw-border-t tw-border-gray-700 tw-pt-4 tw-pb-3" v-else>
                <div class="tw-px-2 tw-space-y-1">
                    <a :href="item.href" class="tw-block tw-rounded-md tw-py-2 tw-px-3 tw-text-base tw-font-medium tw-text-gray-400 hover:tw-bg-gray-700 hover:tw-text-white hover:tw-no-underline" :key="item.name" v-for="item in unauthorizedNavigation">
                        {{ item.name }}
                    </a>
                </div>
            </div>
        </DisclosurePanel>
    </Disclosure>
</template>
