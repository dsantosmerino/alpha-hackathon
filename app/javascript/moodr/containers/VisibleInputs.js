import { connect } from 'react-redux';

import * as actions from '../actions';
import Inputs from '../components/Inputs';

import { getVisibleInputs, getAvailableSources } from '../selectors';

const mapStateToProps = (state) => ({
  inputs: state.inputs,
  sources: getAvailableSources(state)
});

export default connect(mapStateToProps)(Inputs);