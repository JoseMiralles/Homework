function Elephant (name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

elephant = new Elephant("Luchentio", 10,
    ["painting a picture",
    "trolling spammers",
    "coding in Rails"]
);

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes 'phrHHHHHHH!!!!!!'`);
}
Elephant.prototype.grow = function() {
    this.height += 1;
}
Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}
Elephant.prototype.play = function() {
    trick = this.tricks[
        Math.floor(
            Math.random() * this.tricks.length
            )
    ];
    console.log(`${this.name} is ${trick}!`);
}

elephant.trumpet();
console.log("Height:\t" + elephant.height);
elephant.grow();
console.log("Height:\t" + elephant.height);
console.log(elephant.tricks);
elephant.addTrick("playing cards");
console.log(elephant.tricks);
elephant.play();