import { createTheme } from '@mui/material/styles';

const GLOBAL_SPACING = 2;

const theme = createTheme({
  typography: {
    fontFamily: [
      'Open Sans'
    ].join(','),
  },
  palette: {
    primary: {
      main: '#19253B'
    },
    secondary: {
      main: '#0C162D'
    },
    error: {
      main: '#F7567C'
    },
    warning: {
      main: '#FFD447'
    },
    info: {
      main: '#040D21'
    },
    success: {
      main: '#A1E887'
    }
  },
});

export {
  GLOBAL_SPACING, theme
};
