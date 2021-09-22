import './App.css';
import * as React from 'react';
import ReactDOM from 'react-dom';
import Button from '@mui/material/Button';
import { ThemeProvider, createTheme } from '@mui/material/styles';
import Typography from '@mui/material/Typography';
import theme from './theme';

function App() {
  return (
    <ThemeProvider theme={theme}>
      <div className="App">
        <header className="App-header">
        <Typography variant="h2" gutterBottom>
          Hello world
        </Typography>
          <Button variant="contained">Hello World</Button>
        </header>
      </div>
    </ThemeProvider>
  );
}

export default App;
