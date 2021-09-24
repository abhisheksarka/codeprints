import React from "react";
import AceEditor from "react-ace";
import "ace-builds/src-noconflict/mode-ruby";
import "ace-builds/src-noconflict/theme-solarized_dark";
import "ace-builds/src-noconflict/ext-language_tools";
import { Box } from "@mui/material";

export default function Viewer(props) {
  return (
    <Box sx={{
      height: '100%',
      left: props.left,
      width: props.width || '100%',
      bgcolor: 'primary.main'
    }}></Box>
  );
}
