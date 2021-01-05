import React from "react";

function Counts({ previousCounts }){
    <ul>
        { previousCounts.map((count, i) => <li key={i}>{count}</li>) }
    </ul>
}

export default Counts;