import React, { useRef } from 'react';
import AceEditor from 'react-ace';
import 'ace-builds/src-noconflict/mode-ruby';
import 'ace-builds/src-noconflict/theme-solarized_dark';
import 'ace-builds/src-noconflict/ext-language_tools';
import { Box } from '@mui/material';
import Meta from '../meta/Meta';
import Canvas from './canvas/Canvas';

export default function Viewer(props) {
  const canvasContainerRef = useRef(null);

  return (
    <Box sx={{
      height: props.height || '100%',
      left: props.left,
      width: props.width || '100%',
      bgcolor: 'secondary.main',
      backgroundSize: '16px 16px',
      backgroundImage: 'linear-gradient(to right, rgba(255, 255, 255, 0.05) 1px, transparent 1px), linear-gradient(to bottom, rgba(255, 255, 255, 0.05) 1px, transparent 1px)'
    }}>
      <Meta></Meta>
      <div style={{width:'100%', height: '100%'}} ref={canvasContainerRef}>
        <Canvas containerRef={canvasContainerRef}></Canvas>
      </div>
    </Box>
  );
}
