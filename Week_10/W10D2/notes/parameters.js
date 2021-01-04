// OBJECT DESTROCTURING
// This makes it possible to extract parts of an object.

let { a: x, b: y } = { a: 1, b: 2 };
x; // => 1
y; // => 2

// They can also be destructured and assigned to their original variable names;
let { a, b } = { a: 1, b: 2 };
a; // => 1
b; // => 2

// Nested objects work as well
let { a: { b } } = { a: { b: 2 } };
// b => 2, but a is undefined. To fix that:
let { a: a, a: { b } } = { a: { b: 2 } };
// a => { b: 2 }, b => 2

// This can also be used with objects returned by a function.
const multiply = function(n){
    return { one: n, two: n * 2, three: n * 3 }
}
let { one, two } = multiply(10);
one; // => 10
two; // => 20


// PARAMETERS
const movie = {
    id: 1,
    userId: 2,
    title: "Back to The Future.",
};

// Arguments can be deconstructed
const printUserId = ({ userId: id }) => {
    const user = console.log(id);
}