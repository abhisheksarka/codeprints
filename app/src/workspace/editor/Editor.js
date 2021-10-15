import React, { useEffect, useRef } from 'react';
import AceEditor from 'react-ace';
import 'ace-builds/src-noconflict/theme-solarized_dark';
import 'ace-builds/src-noconflict/ext-language_tools';
import ModeCdl from './mode_cdl';
import { alpha } from '@mui/material/styles';
import Nav from '../nav/Nav';
import { Box } from '@mui/material';

export default function Editor(props) {
  const editorRef = useRef(null);

  useEffect(() => {
    editorRef.current.editor.getSession().setMode(new ModeCdl());
  }, []);

  return (
    <Box sx={{
      '& .ace_content': {
        backgroundColor: (theme) => alpha(theme.palette.primary.main, 1)
      },
      '& .ace_gutter': {
        backgroundColor: (theme) => alpha(theme.palette.secondary.main, 1)
      },
      height: '100%'
    }}>
      <Nav></Nav>
      <AceEditor
        ref={editorRef}
        mode='text'
        theme='solarized_dark'
        name='UNIQUE_ID_OF_DIV'
        showGutter={true}
        highlightActiveLine={true}
        height={props.height || '100%'}
        width={props.width || '100%'}
        editorProps={{ $blockScrolling: true }}
        setOptions={{
          enableBasicAutocompletion: true,
          enableLiveAutocompletion: true,
          enableSnippets: false,
          showLineNumbers: true,
          fontSize: 12,
          tabSize: 2
        }}
      />
    </Box>
  );
}
