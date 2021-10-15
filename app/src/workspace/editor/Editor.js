import React, { useEffect, useRef, useCallback } from 'react';
import AceEditor from 'react-ace';
import 'ace-builds/src-noconflict/theme-solarized_dark';
import 'ace-builds/src-noconflict/ext-language_tools';
import ModeCdl from './mode_cdl';
import { alpha } from '@mui/material/styles';
import Nav from '../nav/Nav';
import { Box } from '@mui/material';
import { useMutation } from '@apollo/client';
import PARSE from '../../api/mutations/Parse';
import debounce from 'lodash.debounce';
import { cdlJsonLoad } from './actions';
import { useDispatch } from 'react-redux';

export default function Editor(props) {
  const editorRef = useRef(null);
  const dispatch = useDispatch();
  const [parse, { data, loading, error }] = useMutation(PARSE);

  useEffect(() => {
    editorRef.current.editor.getSession().setMode(new ModeCdl());
  }, []);

  useEffect(() => {
    if (data && data.parse && data.parse.response) {
      dispatch(cdlJsonLoad(data.parse.response));
    }
  }, [data]);

  const onChange = useCallback(
		debounce(nv => parse({variables: {cdl: nv}}), 1500),
		[]
	);

  return (
    <Box sx={{
      '& .ace_content': {
        backgroundColor: (theme) => alpha(theme.palette.secondary.main, 1)
      },
      '& .ace_gutter': {
        backgroundColor: (theme) => alpha(theme.palette.primary.main, 1)
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
        onChange={onChange}
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
