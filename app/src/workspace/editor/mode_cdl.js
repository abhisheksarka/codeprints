import 'ace-builds/src-noconflict/mode-typescript';

export class CustomHighlightRules extends window.ace.acequire(
  'ace/mode/text_highlight_rules'
).TextHighlightRules {
  constructor() {
    super();
    var keywordMapper = this.$keywords = this.createKeywordMapper({
      'keyword': ('class|props|has_many|has_one|acts_like|is_a|String|Array')
    }, 'identifier');
    this.$rules = {
      start: [
        {
          token: 'comment',
          regex: "#.*$"
        },
        {
          token: 'string',
          regex: '".*?"'
        },
        {
          token: keywordMapper,
          regex: "[a-zA-Z_$][a-zA-Z0-9_$]*\\b"
      }
      ]
    };
  }
}

export default class ModeCdl extends window.ace.acequire('ace/mode/typescript')
  .Mode {
  constructor() {
    super();
    this.HighlightRules = CustomHighlightRules;
  }
}
