// Crate Animal class.
function Animal(name){
    this.name = name;
}

Animal.prototype.eat = function(){
    console.log(`${this.name} eats...`);
}

// Create a Dog class.
function Dog(name){
    // Call the "super" constructor.
    Animal.call(this, name);
}

// Make Dog inherit from Animal by chaining the prototypes.

// Example of old inherit function:
// const inherit = function(parent, child){
//     let Surrogate = function(){};
//     Surrogate.prototype = parent.prototype;
//     child.prototype = new Surrogate();
//     child.prototype.constructor = child;
// }
// inherit(Animal, Dog);

// RECOMMENDED:
Dog.prototype = Object.create(Animal.prototype);

// Add more stuff to the Dog prototype.
Dog.prototype.woof = function(){
    console.log(`${this.name} Woofs!`);
}

d = new Dog("Odie");
d.woof();
d.eat();