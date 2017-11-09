import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'redux-zero/react';

import store from '../moodr/store';
import App from '../moodr/App';

console.log(store.getState());

render(
  <Provider store={ store }>
    <App />
  </Provider>,
  document.getElementById('root')
);