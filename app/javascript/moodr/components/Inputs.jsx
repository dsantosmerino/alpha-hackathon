import React, { Component } from 'react';
import { connect } from 'react-redux';

import * as actions from '../actions';

class Inputs extends Component {
  componentWillMount() {
    const { fetchInputs } = this.props;

    fetchInputs();
  }

  inputMoods(input) {
    const { moods } = this.props;

    return input.tones.map(tone => moods[tone]).join(' ');
  }

  render() {
    const { inputs } = this.props;

    return (
      <ul>
        { inputs.map(input => <li key={ input.id }>{ this.inputMoods(input) } { input.content }</li>)}
      </ul>
    )
  }
}

export default connect(
  state => ({
    moods: state.moods,
    inputs: state.inputs
  }),
  actions
)(Inputs);