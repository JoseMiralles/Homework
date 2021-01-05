import React from "react";
import ReactDOM from "react-dom";

import ClickCounter from "./components/clickCounter";

document.addEventListener("DOMContentLoaded", ()=>{
    const root = document.getElementById('root');
    ReactDOM.render(<ClickCounter />, root);
});