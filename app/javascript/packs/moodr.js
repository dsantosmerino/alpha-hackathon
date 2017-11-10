import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';

import rootReducer from '../moodr/reducers';
import App from '../moodr/App';
import { fetchInputs } from '../moodr/actions';

const store = createStore(
  rootReducer,
  applyMiddleware(thunk)
);

store.dispatch(fetchInputs());

render(
  <Provider store={ store }>
    <App />
  </Provider>,
  document.getElementById('root')
);