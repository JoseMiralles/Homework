import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

import { fetchSearchGiphys } from "./actions/giphy_actions";

document.addEventListener("DOMContentLoaded", function(){

    const store = configureStore();

    window.store = store;
    window.fetchSearchGiphys = fetchSearchGiphys;

});