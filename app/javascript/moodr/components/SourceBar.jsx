import React from 'react';
import { connect } from 'react-redux';

import * as actions from '../actions';
import { getAvailableSources } from '../selectors';

function getSourceMoods(sourceId, inputs) {
  // filter inputs by source
  const filteredInputs = inputs.filter(input => input.source.id === sourceId)

  // count
  return filteredInputs.reduce((acc, curr) => {
    curr.tones.forEach(tone => {
      const exists = acc.find(t => t.name === tone);

      if (exists) {
        exists.count = exists.count + 1
      } else {
        acc.push({
          name: tone,
          count: 1
        })
      }
    })


    return acc
  }, []);
}

function getTotalMoodsCount(moods) {
  return moods.reduce((total, current) => {
    return total + current.count;
  }, 0);
}

function getMoodSize(moodCount, total) {
  return (moodCount * 100) / total ;
}


function SourceBar({ inputs, moods, selectMood, selectedMood, source }) {
  const selectedInputs = getSourceMoods(source.id, inputs).sort((a, b) => a.name > b.name);
  const total = getTotalMoodsCount(selectedInputs);

  return (
    <li className="Source">
      <div className="Source__icon">
        <img src={ source.icon_url } alt={ source.display_name } />
      </div>

      <div className="Source__bar">
        <div className="stacked-bar-graph">
          { selectedInputs.map((mood, i) => {
              const size = getMoodSize(mood.count, total);
              const emoji = moods[mood.name];
              return (
                <span
                  key={ i }
                  className={ `bar bar-${mood.name}` + (selectedMood.name === mood.name ? ' bar-selected' : '') }
                  style={ { width: `${size}%` } }
                  onClick={ () => selectMood(emoji) }
                >
                </span>
              )
            })}
        </div>
      </div>
    </li>
  )
}

const mapStateToProps = (state, ownProps) => ({
  inputs: state.inputs,
  selectedMood: state.selectedMood,
  source: getAvailableSources(state).find(source => source.id === ownProps.sourceId),
  moods: state.moods
});

export default connect(mapStateToProps, actions)(SourceBar); 