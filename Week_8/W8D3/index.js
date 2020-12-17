class Animal {
    constructor(name){
        this.name = name;
    }

    speak(){
        return `Hi, my name is ${this.name}.`;
    }
}

class Dog extends Animal {
    constructor(name, breed){
        super(name);
        this.breed = breed;
    }

    speak(){
        return `${super.speak()} Woof! My breed is ${this.breed}.`;
    }
}

dog = new Dog("Odie", "cartoon");
dog.speak();

/* Output:
** Hi, my name is Odie.
** Woof! My breed is cartoon.
*/

let count = 0;
const button = document.querySelector('#button');
const target = document.querySelector('#target')
button.addEventListener('click', () => {
    count ++;
    target.innerHTML = dog.speak();
    button.innerHTML = count;
});