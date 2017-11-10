import React from 'react';
import { connect } from 'react-redux';

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


function SourceBar({ inputs, selectedMood, source }) {
  const moods = getSourceMoods(source.id, inputs);
  const total = getTotalMoodsCount(moods);

  return (
    <li>
      <div className="stacked-bar-graph">
        { moods.map((mood, i) => {
            const size = getMoodSize(mood.count, total);
            return (
              <span
                key={ i }
                className={ `bar bar-${mood.name}` + (selectedMood.name === mood.name ? ' bar-selected' : '') }
                style={ { width: `${size}%` } }
              >
              </span>
            )
          })}
      </div>
    </li>
  )
}

const mapStateToProps = (state, ownProps) => ({
  inputs: state.inputs,
  selectedMood: state.selectedMood,
  source: getAvailableSources(state).find(source => source.id === ownProps.sourceId)
});

export default connect(mapStateToProps)(SourceBar); 