import { createTheme } from '@mui/material/styles';

const theme = createTheme({
  typography: {
    fontFamily: [
      'Open Sans'
    ].join(','),
  },
  palette: {
    mode: 'dark',
    primary: {
      main: '#0C162D'
    },
    secondary: {
      main: '#19253B'
    },
    error: {
      main: '#F7567C'
    },
    warning: {
      main: '#FFD447'
    },
    info: {
      main: '#19253B'
    },
    success: {
      main: '#A1E887'
    }
  },
});

export default theme;
