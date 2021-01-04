// Importing a single default export
import TodoList from "./todo_list.js";

// Importing selectivelly by destructuring.
import { createTodo, receiveTodo } from "./todo_actions";

// Importing in a wrapper
import * as TodoActions from "./todo_actions";
TodoActions.createTodo("Sleep");

// Test this out, to see if it works.
import { createTodo, receiveTodo } from "./todo_actions";