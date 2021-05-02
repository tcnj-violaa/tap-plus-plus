<script>
/*
 * Primary Maintainer: Raymond Chow
 * Main app layout
 */
import Navbar from './Navbar';
export default {
    components: {
        Navbar
    }
}
</script>

<template>
    <Navbar />
    <slot />
</template>
