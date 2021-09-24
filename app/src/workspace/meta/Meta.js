import React from "react";
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import AccountCircleIcon from '@mui/icons-material/AccountCircle';
import IconButton from '@mui/material/IconButton';
import Typography from '@mui/material/Typography';
import { MUTED_OPACITY } from "../../theme";

export default function Meta(props) {
  return (
    <React.Fragment>
      <Box sx={{ flexGrow: 1 }}>
        <AppBar position="static" elevation={0} sx={{backgroundColor: 'transparent'}}>
          <Toolbar>
            <IconButton
              size="large"
              edge="start"
              color="inherit"
              aria-label="menu"
              sx={{ mr: 1 }}
            >
              <AccountCircleIcon />
            </IconButton>
            <Box sx={{ flexGrow: 1 }}>
              <Typography>
                <strong>The Observer Pattern</strong><br/>
              </Typography>
              <Typography variant="caption" sx={{opacity: MUTED_OPACITY}}>
                designed by Abhishek Sarkar
              </Typography>
            </Box>
          </Toolbar>
        </AppBar>
      </Box>
    </React.Fragment>
  );
}
