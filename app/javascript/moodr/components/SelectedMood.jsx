import React from 'react';
import { connect } from 'redux-zero/react';

import actions from '../actions';

const mapToProps = ({ selectedMood, moods }) => ({ selectedMood, moods });

export default connect(mapToProps, actions)(({ moods, selectedMood }) => {
  return (
    <div className="mood-selected-container">
      <span className="mood-selected">{ selectedMood }</span>
    </div>
  );
});
