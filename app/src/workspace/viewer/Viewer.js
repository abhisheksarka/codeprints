import React from "react";
import AceEditor from "react-ace";
import "ace-builds/src-noconflict/mode-ruby";
import "ace-builds/src-noconflict/theme-solarized_dark";
import "ace-builds/src-noconflict/ext-language_tools";
import { Box } from "@mui/material";
import Meta from "../meta/Meta";

export default function Viewer(props) {
  return (
    <Box sx={{
      height: '100%',
      left: props.left,
      width: props.width || '100%',
      bgcolor: 'primary.main',
      backgroundSize: '16px 16px',
      backgroundImage: 'linear-gradient(to right, rgba(255, 255, 255, 0.05) 1px, transparent 1px), linear-gradient(to bottom, rgba(255, 255, 255, 0.05) 1px, transparent 1px)'
    }}>
      <Meta></Meta>
    </Box>
  );
}
