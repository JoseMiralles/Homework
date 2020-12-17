let madLib = function(verb, adjective, noun) {
    return `We shall ${verb} the ${adjective} ${noun}`
}
// console.log(madLib('make', 'best', 'guac'));


let isSubstring = (str, substr) => {
    current = ""
    for(let i = 0; i <= str.length; i++){
        for(let i2 = i; i2 <= str.length; i2++){
            current = str.substring(i, i2);
            if (current == substr) return true
        }
    }
    return false
}
// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));


let fizzBuzz = (array) => {
    return array.map((x) => {
        if (x % 3 == 0) return "Fizz";
        if (x % 5 == 0) return "Buzz";
        return x;
    })
}
// console.log(fizzBuzz([1,3,4,5,7,10,12]));


let isPrime = (num) => {
    for (let i = 2; i < num; i++)
        if (num % i == 0)
            return false
    return true
}
// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

let firstNPrimes = (num) => {
    let result = Array(num);

    current = 2;
    for (let i = 0; i < num;){
        if (isPrime(current)) {
            result[i] = current;
            i++;
        }
        current ++;
    }

    return result;
}
// console.log(firstNPrimes(10))

let sumOfNPrimes = (num) => {
    primes = firstNPrimes(num);
    result = 0;

    primes.forEach(x => {
        result += x
    })

    return result;
}
// console.log(sumOfNPrimes(0))
// console.log(sumOfNPrimes(1))
// console.log(sumOfNPrimes(4))

function Animal(name, breed) {
    this.name = name;
    this.breed = breed;

    this.speak = function(){console.log(`Hi, my name is ${this.name} and my breed is ${this.breed}.`)};
}

/* INHERITANCE */
function Dog(name, breed) {
    Animal.call(this, name, breed)
    this.functionScoped = "Scoped within a function".

    this.bark = function() { console.log("Woof!") }
}

const dog = new Dog("Odie", "cartoon");
dog.speak();
dog.bark();

const halv = function(x){
    return x/2
}

console.log(
    [1,2,3,4].map((x) => {
         return halv(x * 2) 
        })
);