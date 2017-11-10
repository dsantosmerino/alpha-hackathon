import React from 'react';
import { connect } from 'react-redux';

import * as actions from '../actions';

export default connect(null, actions)(({ emoji, selectMood }) => {
  return (
    <span onClick={ () => selectMood(emoji) }>
      { emoji }
    </span>
  )
});