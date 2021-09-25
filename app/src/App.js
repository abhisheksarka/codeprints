import './App.css';
import * as React from 'react';
import ReactDOM from 'react-dom';
import Button from '@mui/material/Button';
import { ThemeProvider, createTheme } from '@mui/material/styles';
import Typography from '@mui/material/Typography';
import Nav from './nav/Nav';
import { midnightTheme, defaultTheme, lightTheme } from './theme';
import Editor from './workspace/editor/Editor';
import Workspace from './workspace/Workspace';

function App() {
  return (
    <ThemeProvider theme={defaultTheme}>
      <div className="App">
        <Nav></Nav>
        <Workspace></Workspace>
      </div>
    </ThemeProvider>
  );
}

export default App;
