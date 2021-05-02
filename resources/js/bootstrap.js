/*
 * Primary Maintainer: Raymond Chow
 *
 * Initialization of frontend libraries (except Vue)
 */

window._ = require('lodash');

window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

window.jQuery = window.$ = require('jquery');
window.Popper = require('popper.js');
require('bootstrap');

