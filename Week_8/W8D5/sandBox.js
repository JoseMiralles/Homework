class Animal {
    constructor(name){
        this.name = name;
    }

    sayHi(){
        return `Hi, my name is ${this.name}.`
    }
}

class Dog extends Animal {
    constructor(name, breed){
        super(name);
        this.breed = breed;
    }

    sayHi(){
        return super.sayHi() + ` My breed is ${this.breed}.`;
    }
}

dog = new Dog("Luchentio", "Husky");
console.log(dog.sayHi());