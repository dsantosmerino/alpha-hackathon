import React, { Component } from 'react';
import { connect } from 'react-redux';

import SourceBar from './SourceBar';

function getInputsBySource(inputs, source) {
  return '';
}

export default ({ inputs, sources }) => {
  return (
    <ul>
      { sources.map(source => (
        <SourceBar key={ source.id } sourceId={ source.id } />
      )) }
    </ul>
  )
}