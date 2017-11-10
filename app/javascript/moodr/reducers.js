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
  selectedMood: {
    name: 'fire',
    emoji: '🔥'
  },
  inputs: []
}

function getSelectedMood(emoji) {
  return Object.keys(moods).find(key => moods[key] === emoji);
}

export default function(state = initialState, action) {
  switch (action.type) {
    case 'SELECT_MOOD':
      return {
        ...state,
        selectedMood: {
          name: getSelectedMood(action.mood),
          emoji: action.mood
        }
      };

    case 'RECEIVE_INPUTS':
      return {
        ...state,
        inputs: action.inputs
      }

    default:
      return state;
  }
}