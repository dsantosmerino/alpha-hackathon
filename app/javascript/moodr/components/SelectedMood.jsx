import React from 'react';
import { connect } from 'react-redux';

import actions from '../actions';

export default connect(
  state => ({
    selectedMood: state.selectedMood
  })
)(({ selectedMood }) => {
  return (
    <div className="mood-selected-container">
      <span className="mood-selected">{ selectedMood.emoji }</span>
    </div>
  );
});