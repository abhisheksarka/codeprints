import { createTheme } from '@mui/material/styles';

const SPACING_FACTOR_IN_PIXELS = 8;
const MUTED_OPACITY = 0.5;

const theme = createTheme({
  typography: {
    fontFamily: [
      'Open Sans'
    ].join(','),
    button: {
      textTransform: 'none'
    }
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
  SPACING_FACTOR_IN_PIXELS, MUTED_OPACITY, theme
};
