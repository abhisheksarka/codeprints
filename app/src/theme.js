import { createTheme } from '@mui/material/styles';

const SPACING_FACTOR_IN_PIXELS = 8;
const MUTED_OPACITY = 0.5;

const DEFAULT_PALETTE = {
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
};

const MIDNIGHT_PALETTE = {
  primary: {
    main: '#1f2227'
  },
  secondary: {
    main: '#1a1d21'
  },
  error: {
    main: '#F7567C'
  },
  warning: {
    main: '#FFD447'
  },
  info: {
    main: '#141619'
  },
  success: {
    main: '#A1E887'
  }
};

const LIGHT_PALETTE = {};

const DEFAULT_TYPOGRAPHY = {
  fontFamily: [
    'Open Sans'
  ].join(','),
  button: {
    textTransform: 'none'
  }
}

const defaultTheme = createTheme({
  typography: DEFAULT_TYPOGRAPHY,
  palette: DEFAULT_PALETTE
});

const midnightTheme = createTheme({
  typography: DEFAULT_TYPOGRAPHY,
  palette: MIDNIGHT_PALETTE
});

const lightTheme = createTheme({
  typography: DEFAULT_TYPOGRAPHY,
  palette: LIGHT_PALETTE
});

export {
  SPACING_FACTOR_IN_PIXELS,
  MUTED_OPACITY,
  DEFAULT_PALETTE,
  MIDNIGHT_PALETTE,
  DEFAULT_TYPOGRAPHY,
  midnightTheme,
  defaultTheme,
  lightTheme
};
