function Cat() {
    this.name = 'theCat';
    this.age = 3;
}

function Dog() {
    this.name = 'theDog';
    this.age = 4;
}

Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat();
const Noodles = new Dog();

Noodles.chase(Markov);