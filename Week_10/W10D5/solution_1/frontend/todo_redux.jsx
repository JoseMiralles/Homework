import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  store = applyMiddlewares(store, addLoggingToDispatch);

  // store.dispatch = addLoggingToDispatch(store);


  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

// const addLoggingToDispatch = ( store ) => {
//   const dispatch = store.dispatch;
//   return action => {
//     console.log( store.getState() );
//     console.log( action );
//     dispatch( action );
//     console.log( store.getState() );
//   };
// }

function applyMiddlewares ( store, ...middlewares ){
  let dispatch = store.dispatch;
  middlewares.forEach(mw => {
    dispatch = mw(store)(dispatch);
  });
  return Object.assign({}, store, { dispatch });
}

function addLoggingToDispatch( store ){
  return function( next ){
    return function( action ) {
      console.log( store.getState() );
      console.log( action );
      next( action );
      console.log( store.getState() );
    }
  }
}