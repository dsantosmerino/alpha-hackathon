import React from 'react';

import Moods from './components/Moods';
import VisibleInputs from './containers/VisibleInputs';

export default () => {
  return (
    <div>
      <Moods />
      <VisibleInputs />
    </div>
  )
}