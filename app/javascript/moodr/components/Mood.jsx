import React from 'react';
import { connect } from 'redux-zero/react';

import actions from '../actions';

export default connect(null, actions)(({ emoji, selectMood }) => {
  return (
    <button className="mood-button" onClick={ () => selectMood(emoji) }>
      { emoji }
    </button>
  )
});
