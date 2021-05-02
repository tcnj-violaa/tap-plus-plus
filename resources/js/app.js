/*
 * Primary Maintainer: Raymond Chow
 *
 * Vue initialization
 */
import {createApp, h} from "vue";
import Navbar from './components/layout/Navbar';
import App from "./components/layout/App";

require('./bootstrap');

createApp(Navbar).mount(document.getElementById('navbar'));

import HomeComponent from './components/HomeComponent';
const homeElement = document.getElementById('home-component');
if (homeElement !== null) {
    createApp(HomeComponent).mount(homeElement);
}

import AdminEditRequestList from './components/admin/AdminEditRequestList';
const adminEditRequestListElement = document.getElementById('admin-edit-rq-component');
if (adminEditRequestListElement !== null) {
    createApp(AdminEditRequestList).mount(adminEditRequestListElement);
}

import UserEditRequestList from './components/user/UserEditRequestList';
const userEditRequestListElement = document.getElementById('user-edit-rq-component');
if (userEditRequestListElement !== null) {
    createApp(UserEditRequestList).mount(userEditRequestListElement);
}

import TranscriptHistory from './components/user/TranscriptHistory';
const transcriptHistoryElement = document.getElementById('ts-history-component');
if (transcriptHistoryElement !== null) {
    createApp(TranscriptHistory).mount(transcriptHistoryElement);
}
