import * as React from 'react';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import Button from '@mui/material/Button';
import IconButton from '@mui/material/IconButton';
import PlayArrowIcon from '@mui/icons-material/PlayArrow';
import SaveIcon from '@mui/icons-material/Save';
import DeleteIcon from '@mui/icons-material/Delete';

export default function Nav() {
  return (
    <Box sx={{ flexGrow: 1 }}>
      <AppBar position="static" color="info">
        <Toolbar variant="dense">
          <Button startIcon={<PlayArrowIcon fontSize="small"/>} variant="secondary" size="small">
            Run
          </Button>
          <Button startIcon={<SaveIcon fontSize="small"/>} variant="secondary" size="small">
            Save
          </Button>
          <Button startIcon={<DeleteIcon fontSize="small"/>} variant="secondary" size="small">
            Delete
          </Button>
        </Toolbar>
      </AppBar>
    </Box>
  );
}
