import React from "react";
import { Box, Grid } from "@mui/material";
import Editor from "./editor/Editor";
import Viewer from "./viewer/Viewer";
import Nav from "./nav/Nav";

export default function Workspace() {
  return (
    <Box sx={{
      flexGrow: 1
    }}>
      <Grid container spacing={0} sx={{height: '100vh'}}>
        <Grid item xs={4}>
          <Editor></Editor>
        </Grid>
        <Grid item xs={8}>
          <Viewer></Viewer>
        </Grid>
      </Grid>
    </Box>
  );
}
