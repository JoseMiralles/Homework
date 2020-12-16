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