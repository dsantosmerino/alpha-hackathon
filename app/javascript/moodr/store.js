import createStore from 'redux-zero';

const moods = {
  anger: '😤',
  fear: '😱',
  joy: '😁',
  sadness: '☹️',
  analytical: '🤓',
  confident: '😎',
  tentative: '🤔'
}

const initialState = {
  moods,
  selectedMood: '',
  inputs: []
}

const store = createStore(initialState);

export default store;