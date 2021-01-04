// EXPORTING

/// Multiple items per file.
const TodoActions = {
    receiveTodo(todo) {
        //...
    },
    fetchTodos(){
        //...
    }
}
module.exports = TodoActons;

// Exporting multiple functions in ES6
const receiveTodo = function(){}
const fetchTodos = function(){}
export {receiveTodo, fetchTodos}

// Or they can be exported as they are written.
export const createTodo = function(){}

// Export single DEFAULT item
class defaultClass{}
export default defaultClass
// or
export default function(){}