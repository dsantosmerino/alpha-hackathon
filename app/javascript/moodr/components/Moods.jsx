import React from 'react';
import { connect } from 'react-redux';

import Mood from './Mood';
import SelectedMood from './SelectedMood';

const mapToProps = ({ selectedMood, moods }) => ({ selectedMood, moods });

export default connect(mapToProps)(({ moods, selectedMood }) => {
  return (
    <div>
      <div className="mood-button-container">
        { 
          Object.values(moods).map((emoji, i) => (
            <Mood key={ i } emoji={ emoji } />
          ))
        }
      </div>
      <SelectedMood>{ selectedMood }</SelectedMood>
    </div>
  );
});
