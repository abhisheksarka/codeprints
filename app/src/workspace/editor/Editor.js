import React from "react";
import AceEditor from "react-ace";

import "ace-builds/src-noconflict/mode-ruby";
import "ace-builds/src-noconflict/theme-solarized_dark";
import "ace-builds/src-noconflict/ext-language_tools";


export default function Editor() {
  return (
    <AceEditor
      mode="ruby"
      theme="solarized_dark"
      name="UNIQUE_ID_OF_DIV"
      showGutter={true}
      highlightActiveLine={true}
      editorProps={{ $blockScrolling: true }}
      setOptions={{
        enableBasicAutocompletion: false,
        enableLiveAutocompletion: false,
        enableSnippets: false,
        showLineNumbers: true,
        tabSize: 2
      }}
    />
  );
}
