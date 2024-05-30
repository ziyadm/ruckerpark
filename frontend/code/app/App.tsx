import React, { ReactElement } from 'react';
import ReactDOM from 'react-dom';

import { CssBaseline, Stack, Typography } from '@mui/material';

function App(): ReactElement {
  return (
    <React.Fragment>
      <CssBaseline />
      <Stack
        sx={{
          width: '100%',
          height: '100vh',
          justifyContent: 'center',
          alignItems: 'center',
        }}
      >
        <Typography variant="h1">Hello World</Typography>
      </Stack>
    </React.Fragment>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));
