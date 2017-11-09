import React from 'react';
import { connect } from 'redux-zero/react';

import actions from '../actions';
import Mood from './Mood';

const mapToProps = ({ selectedMood, moods }) => ({ selectedMood, moods });

export default connect(mapToProps, actions)(({ moods, selectedMood }) => {
  return (
    <div>
      <h1>Selected mood: { selectedMood }</h1>
      { Object.values(moods).map((emoji, i) => (
        <Mood key={ i } emoji={ emoji } />
      ))}
    </div>
  );
});