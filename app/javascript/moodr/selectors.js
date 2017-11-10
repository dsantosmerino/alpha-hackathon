import { createSelector } from 'reselect';

const getSelectedMood = (state) => state.selectedMood;
const getInputs = (state) => state.inputs;

export const getSourceInputs = ({ sourceId }) => createSelector(
  [getInputs],
  (inputs, sourceId) => (sourceId)
)

export const getAvailableSources = createSelector(
  [getInputs],
  (inputs) => inputs.reduce((acc, current) => {
    if (!acc.find(source => source.id === current.source.id)) acc.push(current.source);
    return acc
  }, [])
)
