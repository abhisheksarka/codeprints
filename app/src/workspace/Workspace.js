import React from "react";
import { Box, Grid } from "@mui/material";
import Editor from "./editor/Editor";
import Viewer from "./viewer/Viewer";

export default function Workspace() {
  return (
    <Box sx={{
      flexGrow: 1
    }}>
      <Grid container spacing={0} sx={{height: '100vh'}}>
        <Grid item xs={5}>
          <Editor height='100vh'></Editor>
        </Grid>
        <Grid item xs={7}>
          <Viewer></Viewer>
        </Grid>
      </Grid>
    </Box>
  );
}
