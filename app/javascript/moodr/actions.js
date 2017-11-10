export function selectMood(mood) {
  return {
    type: 'SELECT_MOOD',
    mood
  }
}

export function receiveInputs(inputs) {
  return {
    type: 'RECEIVE_INPUTS',
    inputs
  }
}

export function fetchInputs() {
  return dispatch => {
    fetch('https://agile-fjord-58944.herokuapp.com/api/inputs/today?user_id=1')
    .then((response) => response.json())
    .then((inputs) => dispatch(receiveInputs(inputs)))
  }
}