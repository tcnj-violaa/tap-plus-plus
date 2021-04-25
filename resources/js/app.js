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
