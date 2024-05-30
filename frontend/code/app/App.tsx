import React, { ReactElement } from 'react';
import ReactDOM from 'react-dom';

import { CssBaseline, Stack, Typography } from '@mui/material';
import Footer from '../app/Footer';
import Header from '../app/Header';
import Layout from '../app/Layout';

function App(): ReactElement {
  return (
    <React.Fragment>
      <CssBaseline />
      <Layout />
    </React.Fragment>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));
