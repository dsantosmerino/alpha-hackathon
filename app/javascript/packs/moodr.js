import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';

import rootReducer from '../moodr/reducers';
import App from '../moodr/App';

const store = createStore(
  rootReducer,
  applyMiddleware(thunk)
);

console.log(store.getState());

render(
  <Provider store={ store }>
    <App />
  </Provider>,
  document.getElementById('root')
);