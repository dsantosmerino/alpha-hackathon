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

export default function(state = initialState, action) {
  switch (action.type) {
    case 'SELECT_MOOD':
      return {
        ...state,
        selectedMood: action.mood
      };

    case 'RECEIVE_INPUTS':
      console.log(action)
      return {
        ...state,
        inputs: action.inputs
      }

    default:
      return state;
  }
}