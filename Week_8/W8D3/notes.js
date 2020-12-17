/* PROTOTYPES */

function NBAPlayer (name, team, pos) {
    this.name = name;
    this.team = team;
    this.pos = pos;
};

const curry = new NBAPlayer("Curry", "Some team", "position")

NBAPlayer.prototype.dunk = function() {
    console.log(`${this.name} just dunked!`);
}

curry.dunk(); /* Curry just dunked! */


/* CALLBACKS */

let milliseconds = 2000
let myCallBack = () => {
    console.log(`It has been ${milliseconds} milliseconds.`)
}

global.setTimeout(myCallBack, milliseconds);

global.setTimeout(() => {
    console.log(`It has been ${milliseconds} milliseconds.`)
}, milliseconds)