import React from 'react';
import { connect } from 'redux-zero/react';

import actions from '../actions';

export default connect(null, actions)(({ emoji, selectMood }) => {
  return (
    <span onClick={ () => selectMood(emoji) }>
      { emoji }
    </span>
  )
});