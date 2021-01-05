import React from "react";
import ReactDOM from "react-dom";

import Calcualtor from "./components/calculator"

document.addEventListener("DOMContentLoaded", ()=>{
    const root = document.getElementById("root");
    ReactDOM.render(
        <Calcualtor />
        , root);
});