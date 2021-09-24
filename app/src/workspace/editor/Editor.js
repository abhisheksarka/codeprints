import React from "react";
import AceEditor from "react-ace";
import "ace-builds/src-noconflict/mode-ruby";
import "ace-builds/src-noconflict/theme-solarized_dark";
import "ace-builds/src-noconflict/ext-language_tools";
import Nav from '../nav/Nav';

export default function Editor(props) {
  return (
    <React.Fragment>
      <Nav></Nav>
      <AceEditor
        mode="ruby"
        theme="solarized_dark"
        name="UNIQUE_ID_OF_DIV"
        showGutter={true}
        highlightActiveLine={true}
        height='100%'
        width={props.width || '100%'}
        editorProps={{ $blockScrolling: true }}
        setOptions={{
          enableBasicAutocompletion: true,
          enableLiveAutocompletion: true,
          enableSnippets: false,
          showLineNumbers: true,
          fontSize: 14,
          tabSize: 2
        }}
      />
    </React.Fragment>
  );
}
