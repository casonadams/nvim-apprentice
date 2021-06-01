-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require('lush')
local hsl = lush.hsl
local v = vim.g -- this must be done, because lush is executed in a bare environment

v.colors_name = 'nvim-nord'

local bg = vim.o.background
if bg == nil then
  bg = "dark"
  vim.o.background = bg
end

local darken = 0

if bg == "dark" then
  darken = 0
else
  darken = 0
end

local clrs = {
  nord0 = hsl("#2F3541").darken(darken),
  nord1 = hsl("#3C4353").darken(darken),
  nord2 = hsl("#444D5F").darken(darken),
  nord3 = hsl("#4D576A").darken(darken),
  nord3_bright = hsl("#616F89").darken(darken),
  nord4 = hsl("#D8DEE9").darken(darken),
  nord5 = hsl("#E5E9F0").darken(darken),
  nord6 = hsl("#ECEFF4").darken(darken),
  nord7 = hsl("#8FBCBB").darken(darken),
  nord8 = hsl("#87BFCF").darken(darken),
  nord9 = hsl("#81A1C1").darken(darken),
  nord10 = hsl("#5D81AC").darken(darken),
  nord11 = hsl("#BE6069").darken(darken),
  nord12 = hsl("#D18771").darken(darken),
  nord13 = hsl("#EBCA89").darken(darken),
  nord14 = hsl("#A4BF8D").darken(darken),
  nord15 = hsl("#B48EAD").darken(darken),
}

local cfg = {
  nord_bold = v.nord_bold or 1,
  nord_italic = v.nord_italic or 0, -- TODO: Add other conditions
  nord_underline = v.nord_underline or 0,
  nord_italic_comments = v.nord_italic_comments or 0,
  nord_uniform_status_lines = v.nord_uniform_status_lines or 0,
  nord_uniform_diff_background = v.nord_uniform_diff_background or 0,
  nord_cursor_line_number_background = v.nord_cursor_line_number_background or 0,
  nord_bold_vertical_split_line = v.nord_bold_vertical_split_line or 0,
}

local spec = {
  bold = cfg.nord_bold == 1 and "bold" or "",
  italic = cfg.nord_italic == 1 and "italic" or "",
  underline = cfg.nord_underline == 1 and "underline" or "",
  inverse = "inverse",
  undercurl = "undercurl",
}
spec['italicize_comments'] = cfg.nord_italic_comments == 1 and spec.italic or ""

local gui_combine = function(gui)
  for i = 1, #gui do
    if gui[i] == "" then
      table.remove(gui, i)
    end
  end
  return table.concat(gui, ',')
end

-- Neovim Terminal Colors --
v.terminal_color_0 = clrs.nord1.hex
v.terminal_color_1 = clrs.nord11.hex
v.terminal_color_2 = clrs.nord14.hex
v.terminal_color_3 = clrs.nord13.hex
v.terminal_color_4 = clrs.nord9.hex
v.terminal_color_5 = clrs.nord15.hex
v.terminal_color_6 = clrs.nord8.hex
v.terminal_color_7 = clrs.nord5.hex
v.terminal_color_8 = clrs.nord3.hex
v.terminal_color_9 = clrs.nord11.hex
v.terminal_color_10 = clrs.nord14.hex
v.terminal_color_11 = clrs.nord13.hex
v.terminal_color_12 = clrs.nord9.hex
v.terminal_color_13 = clrs.nord15.hex
v.terminal_color_14 = clrs.nord7.hex
v.terminal_color_15 = clrs.nord6.hex

local theme = lush(function()
  return {
    -- +---------------+
    -- + UI Components +
    -- +---------------+
    -- +-- Attributes --+
    Bold {sp = spec.bold},
    Italic {sp = spec.italic},
    Underline {sp = spec.underline},

    -- +-- Editor --+
    ColorColumn {bg = clrs.nord1},
    Cursor {fg = clrs.nord0, bg = clrs.nord4},
    CursorLine {bg = clrs.nord1},
    Error {fg = clrs.nord4, bg = clrs.nord11},
    iCursor {fg = clrs.nord0, bg = clrs.nord4},
    LineNr {fg = clrs.nord3},
    MatchParen {fg = clrs.nord8, bg = clrs.nord3},
    NonText {fg = clrs.nord2},
    Normal {fg = clrs.nord4, bg = clrs.nord0},
    Pmenu {fg = clrs.nord4, bg = clrs.nord2},
    PmenuSbar {fg = clrs.nord4, bg = clrs.nord2},
    PmenuSel {fg = clrs.nord8, bg = clrs.nord3},
    PmenuThumb {fg = clrs.nord8, bg = clrs.nord3},
    SpecialKey {fg = clrs.nord3},
    SpellBad {
      fg = clrs.nord11,
      bg = clrs.nord,
      gui = spec.undercurl,
      guisp = clrs.nord11,
    },
    SpellCap {
      fg = clrs.nord13,
      bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord13,
    },
    SpellLocal {
      fg = clrs.nord5,
      bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord5,
    },
    SpellRare {
      fg = clrs.nord6,
      bg = clrs.nord0,
      gui = spec.undercurl,
      guisp = clrs.nord6,
    },
    Visual {bg = clrs.nord2},
    VisualNOS {bg = clrs.nord2},

    -- +-- Gutter --+
    CursorColumn {bg = clrs.nord1},
    CursorLineNr {
      fg = clrs.nord4,
      bg = cfg.nord_cursor_line_number_background == 1 and nil or clrs.nord1,
    },
    Folded {fg = clrs.nord3.li(7), bg = clrs.nord1, gui = spec.bold},
    FoldColumn {fg = clrs.nord3, bg = clrs.nord0},
    SignColumn {fg = clrs.nord1.li(2), bg = clrs.nord3},

    -- +-- Navigation --+
    Directory {fg = clrs.nord8},

    -- +--- Prompt/Status ---+
    EndOfBuffer {fg = clrs.nord1},
    ErrorMsg {fg = clrs.nord4, bg = clrs.nord11},
    ModeMsg {fg = clrs.nord4},
    MoreMsg {fg = clrs.nord8},
    Question {fg = clrs.nord4},
    StatusLine {fg = clrs.nord8, bg = clrs.nord3, gui = "NONE"},
    StatusLineNC {
      fg = clrs.nord4,
      bg = cfg.nord_uniform_status_lines == 0 and clrs.nord1 or crls.nord3,
      gui = "NONE",
    },
    StatusLineTerm {fg = clrs.nord8, bg = clrs.nord3, gui = "NONE"},
    StatusLineTermNC {
      fg = clrs.nord4,
      bg = cfg.nord_uniform_status_lines == 0 and clrs.nord1 or crls.nord3,
      gui = "NONE",
    },
    WarningMsg {fg = clrs.nord0, bg = clrs.nord13},
    WildMenu {fg = clrs.nord8, bg = clrs.nord1},

    -- +--- Search ---+
    IncSearch {fg = clrs.nord6, bg = clrs.nord10, gui = spec.underline},
    Search {fg = clrs.nord1, bg = clrs.nord8, gui = "NONE"},

    -- +--- Tabs ---+
    TabLine {fg = clrs.nord4, bg = clrs.nord1, gui = "NONE"},
    TabLineFill {fg = clrs.nord4, bg = clrs.nord1, gui = "NONE"},
    TabLineSel {fg = clrs.nord8, bg = clrs.nord3, gui = "NONE"},

    -- +--- Window ---+
    Title {fg = clrs.nord4, gui = "NONE"},

    VertSplit {
      fg = clrs.nord2,
      bg = cfg.nord_bold_vertical_split_line == 0 and clrs.nord0 or clrs.nord1,
      gui = "NONE",
    },

    -- +----------------------+
    -- + Language Base Groups +
    -- +----------------------+
    Boolean {fg = clrs.nord9},
    Character {fg = clrs.nord14},
    Comment {fg = clrs.nord3_bright, gui = spec.italicize_comments},
    Conditional {fg = clrs.nord9},
    Constant {fg = clrs.nord4},
    Define {fg = clrs.nord9},
    Delimiter {fg = clrs.nord6},
    Exception {fg = clrs.nord9},
    Float {fg = clrs.nord15},
    Function {fg = clrs.nord8},
    Identifier {fg = clrs.nord4, gui = "NONE"},
    Include {fg = clrs.nord9},
    Keyword {fg = clrs.nord9},
    Label {fg = clrs.nord9},
    Number {fg = clrs.nord15},
    Operator {fg = clrs.nord9, gui = "NONE"},
    PreProc {fg = clrs.nord9, gui = "NONE"},
    Repeat {fg = clrs.nord9},
    Special {fg = clrs.nord4},
    SpecialChar {fg = clrs.nord13},
    SpecialComment {fg = clrs.nord8, gui = spec.italicize_comments},
    Statement {fg = clrs.nord9},
    StorageClass {fg = clrs.nord9},
    String {fg = clrs.nord14},
    Structure {fg = clrs.nord9},
    Tag {fg = clrs.nord4},
    Todo {fg = clrs.nord13, bg = nil},
    Type {fg = clrs.nord9, gui = "NONE"},
    Typedef {fg = clrs.nord9},
    Macro {Define},
    PreCondit {PreProc},
    Conceal {bg = Normal.bg, fg = Normal.fg.ro(10)},

    -- +-----------+
    -- + Languages +
    -- +-----------+
    asciidocAttributeEntry {fg = clrs.nord10},
    asciidocAttributeList {fg = clrs.nord10},
    asciidocAttributeRef {fg = clrs.nord10},
    asciidocHLabel {fg = clrs.nord9},
    asciidocListingBlock {fg = clrs.nord7},
    asciidocMacroAttributes {fg = clrs.nord8},
    asciidocOneLineTitle {fg = clrs.nord8},
    asciidocPassthroughBlock {fg = clrs.nord9},
    asciidocQuotedMonospaced {fg = clrs.nord7},
    asciidocTriplePlusPassthrough {fg = clrs.nord7},
    asciidocAdmonition {Keyword},
    -- asciidocAttributeRef {markdownH1},
    asciidocBackslash {Keyword},
    asciidocMacro {Keyword},
    asciidocQuotedBold {Bold},
    asciidocQuotedEmphasized {Italic},
    asciidocQuotedMonospaced2 {asciidocQuotedMonospaced},
    asciidocQuotedUnconstrainedBold {asciidocQuotedBold},
    asciidocQuotedUnconstrainedEmphasized {asciidocQuotedEmphasized},
    -- asciidocURL {markdownLinkText},

    awkCharClass {fg = clrs.nord7},
    awkPatterns {fg = clrs.nord9, gui = spec.bold},
    awkArrayElement {Identifier},
    awkBoolLogic {Keyword},
    awkBrktRegExp {SpecialChar},
    awkComma {Delimiter},
    awkExpression {Keyword},
    awkFieldVars {Identifier},
    awkLineSkip {Keyword},
    awkOperator {Operator},
    awkRegExp {SpecialChar},
    awkSearch {Keyword},
    awkSemicolon {Delimiter},
    awkSpecialCharacter {SpecialChar},
    awkSpecialPrintf {SpecialChar},
    awkVariables {Identifier},

    cIncluded {fg = clrs.nord7},
    cOperator {Operator},
    cPreCondit {PreCondit},

    cmakeGeneratorExpression {fg = clrs.nord10},

    csPreCondit {PreCondit},
    csType {Type},
    csXmlTag {SpecialComment},

    cssAttributeSelector {fg = clrs.nord7},
    cssDefinition {fg = clrs.nord7, gui = "NONE"},
    cssIdentifier {fg = clrs.nord7, gui = spec.underline},
    cssStringQ {fg = clrs.nord7},
    cssAttr {Keyword},
    cssBraces {Delimiter},
    cssClassName {cssDefinition},
    cssColor {Number},
    cssProp {cssDefinition},
    cssPseudoClass {cssDefinition},
    cssPseudoClassId {cssPseudoClass},
    cssVendor {Keyword},

    dosiniHeader {fg = clrs.nord8},
    dosiniLabel {Type},

    dtBooleanKey {fg = clrs.nord7},
    dtExecKey {fg = clrs.nord7},
    dtLocaleKey {fg = clrs.nord7},
    dtNumericKey {fg = clrs.nord7},
    dtTypeKey {fg = clrs.nord7},
    dtDelim {Delimiter},
    dtLocaleValue {Keyword},
    dtTypeValue {Keyword},

    DiffAdd {
      fg = clrs.nord14,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },
    DiffChange {
      fg = clrs.nord13,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },
    DiffDelete {
      fg = clrs.nord11,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },
    DiffText {
      fg = clrs.nord9,
      bg = cfg.nord_uniform_diff_background == 0 and clrs.nord0 or clrs.nord1,
      gui = spec.inverse,
    },

    gitconfigVariable {fg = clrs.nord7},

    goBuiltins {fg = clrs.nord7},
    goConstants {Keyword},

    helpBar {fg = clrs.nord3},
    helpHyperTextJump {fg = clrs.nord8, gui = spec.underline},

    markdownBlockquote {fg = clrs.nord7},
    markdownCode {fg = clrs.nord7},
    markdownCodeDelimiter {fg = clrs.nord7},
    markdownFootnote {fg = clrs.nord7},
    markdownId {fg = clrs.nord7},
    markdownIdDeclaration {fg = clrs.nord7},
    markdownH1 {fg = clrs.nord8},
    markdownLinkText {fg = clrs.nord8},
    markdownUrl {fg = clrs.nord4, gui = "NONE"},
    markdownBold {Bold},
    markdownBoldDelimiter {Keyword},
    markdownFootnoteDefinition {markdownFootnote},
    markdownH2 {markdownH1},
    markdownH3 {markdownH1},
    markdownH4 {markdownH1},
    markdownH5 {markdownH1},
    markdownH6 {markdownH1},
    markdownIdDelimiter {Keyword},
    markdownItalic {Italic},
    markdownItalicDelimiter {Keyword},
    markdownLinkDelimiter {Keyword},
    markdownLinkTextDelimiter {Keyword},
    markdownListMarker {Keyword},
    markdownRule {Keyword},
    markdownHeadingDelimiter {Keyword},

    htmlArg {fg = clrs.nord7},
    htmlLink {fg = clrs.nord4, gui = "NONE"},
    htmlBold {Bold},
    htmlTag {Keyword},
    htmlEndTag {htmlTag},
    htmlItalic {Italic},
    htmlH1 {markdownH1},
    htmlH2 {markdownH1},
    htmlH3 {markdownH1},
    htmlH4 {markdownH1},
    htmlH5 {markdownH1},
    htmlH6 {markdownH1},
    htmlSpecialChar {SpecialChar},
    htmlTagN {htmlTag},

    javaDocTags {fg = clrs.nord7},
    javaCommentTitle {Comment},
    javaScriptBraces {Delimiter},
    javaScriptIdentifier {Keyword},
    javaScriptNumber {Number},

    jsonKeyword {fg = clrs.nord7},

    lessClass {fg = clrs.nord7},
    lessAmpersand {Keyword},
    lessCssAttribute {Delimiter},
    lessFunction {Function},
    cssSelectorOp {Keyword},

    lispAtomBarSymbol {SpecialChar},
    lispAtomList {SpecialChar},
    lispAtomMark {Keyword},
    lispBarSymbol {SpecialChar},
    lispFunc {Function},

    luaFunc {Function},
    luaConstant {Boolean}, -- TODO: Could also be linked to Number for being violet <04-03-21, kunzaatko>

    perlPackageDecl {fg = clrs.nord7},

    phpClasses {fg = clrs.nord7},
    phpClass {fg = clrs.nord7},
    phpDocTags {fg = clrs.nord7},
    phpDocCustomTags {phpDocTags},
    phpMemberSelector {Keyword},
    phpMethod {Function},
    phpFunction {Function},

    podCmdText {fg = clrs.nord7},
    podVerbatimLine {fg = clrs.nord4},
    podFormat {Keyword},

    pythonBuiltin {Type},
    pythonEscape {SpecialChar},

    rubyConstant {fg = clrs.nord7},
    rubySymbol {fg = clrs.nord6, gui = spec.bold},
    rubyAttribute {Identifier},
    rubyBlockParameterList {Operator},
    rubyInterpolationDelimiter {Keyword},
    rubyKeywordAsMethod {Function},
    rubyLocalVariableOrMethod {Function},
    rubyPseudoVariable {Keyword},
    rubyRegexp {SpecialChar},

    rustAttribute {fg = clrs.nord10},
    rustEnum {fg = clrs.nord7, gui = spec.bold},
    rustMacro {fg = clrs.nord8, gui = spec.bold},
    rustModPath {fg = clrs.nord7},
    rustPanic {fg = clrs.nord9, gui = spec.bold},
    rustTrait {fg = clrs.nord7, gui = spec.italic},
    rustCommentLineDoc {Comment},
    rustDerive {rustAttribute},
    rustEnumVariant {rustEnum},
    rustEscape {SpecialChar},
    rustQuestionMark {Keyword},

    sassClass {fg = clrs.nord7},
    sassId {fg = clrs.nord7, gui = spec.underline},
    sassAmpersand {Keyword},
    sassClassChar {Delimiter},
    sassControl {Keyword},
    sassControlLine {Keyword},
    sassExtend {Keyword},
    sassFor {Keyword},
    sassFunctionDecl {Keyword},
    sassFunctionName {Function},
    sassidChar {sassId},
    sassInclude {SpecialChar},
    sassMixinName {Function},
    sassMixing {SpecialChar},
    sassReturn {Keyword},

    shCmdParenRegion {Delimiter},
    shCmdSubRegion {Delimiter},
    shDerefSimple {Identifier},
    shDerefVar {Identifier},

    sqlKeyword {Keyword},
    sqlSpecial {Keyword},

    vimAugroup {fg = clrs.nord7},
    vimMapRhs {fg = clrs.nord7},
    vimNotation {fg = clrs.nord7},
    vimFunc {Function},
    vimFunction {Function},
    vimUserFunc {Function},

    xmlAttrib {fg = clrs.nord7},
    xmlCdataStart {fg = clrs.nord3_bright, gui = spec.bold},
    xmlNamespace {fg = clrs.nord7},
    xmlAttribPunct {Delimiter},
    xmlCdata {Comment},
    xmlCdataCdata {xmlCdataStart},
    xmlCdataEnd {xmlCdataStart},
    xmlTagName {Keyword},
    xmlEndTag {xmlTagName},
    xmlProcessingDelim {Keyword},

    yamlBlockMappingKey {fg = clrs.nord7},
    yamlBool {Keyword},
    yamlDocumentStart {Keyword},

    -- +----------------+
    -- + Plugin Support +
    -- +----------------+
    -- +--- UI ---+
    -- ALE
    -- > w0rp/ale
    ALEWarningSign {fg = clrs.nord13},
    ALEErrorSign {fg = clrs.nord11},
    ALEWarning {fg = clrs.nord13, gui = spec.undercurl},
    ALEError {fg = clrs.nord11, gui = spec.undercurl},

    -- Coc
    -- > neoclide/coc
    CocWarningHighlight {fg = clrs.nord13, gui = spec.undercurl},
    CocErrorHighlight {fg = clrs.nord11, gui = spec.undercurl},
    CocWarningSign {fg = clrs.nord13},
    CocErrorSign {fg = clrs.nord11},
    CocInfoSign {fg = clrs.nord8},
    CocHintSign {fg = clrs.nord10},

    -- Nvim LSP
    -- > neovim/nvim-lsp
    LspDiagnosticsWarning {fg = clrs.nord13},
    LspDiagnosticsError {fg = clrs.nord11},
    LspDiagnosticsInformation {fg = clrs.nord8},
    LspDiagnosticsHint {fg = clrs.nord10},

    LspDiagnosticsUnderlineError         { fg = "none", gui = "none" }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { fg = "none", gui = "none" }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { fg = "none", gui = "none" }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { fg = "none", gui = "none" }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { fg = clrs.nord11 }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { fg = clrs.nord13 }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { fg = clrs.nord8 }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { fg = clrs.nord10 }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { fg = clrs.nord11, bg = clrs.nord3 }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { fg = clrs.nord13, bg = clrs.nord3 }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { fg = clrs.nord8, bg = clrs.nord3 }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { fg = clrs.nord10, bg = clrs.nord3 }, -- Used for "Hint" signs in sign column

    LSPDiagnosticsVirtualTextWarning {
      fg = LspDiagnosticsWarning.fg.de(20).li(10),
      gui = spec.italic,
    },
    LSPDiagnosticsVirtualTextError {
      fg = LspDiagnosticsError.fg.de(20).li(10),
      gui = spec.italic,
    },
    LSPDiagnosticsVirtualTextInformation {
      fg = LspDiagnosticsInformation.fg.de(20).da(10),
      gui = spec.italic,
    },
    LSPDiagnosticsVirtualTextHint {
      fg = LspDiagnosticsHint.fg.de(20).li(10),
      gui = spec.italic,
    },

    -- GitGutter
    -- > airblade/vim-gitgutter
    GitGutterAdd {fg = clrs.nord14},
    GitGutterChange {fg = clrs.nord13},
    GitGutterChangeDelete {fg = clrs.nord11},
    GitGutterDelete {fg = clrs.nord11},

    -- Signify
    -- > mhinz/vim-signify
    SignifySignAdd {fg = clrs.nord14, bg = clrs.nord3 },
    SignifySignChange {fg = clrs.nord13, bg = clrs.nord3 },
    SignifySignChangeDelete {fg = clrs.nord11, bg = clrs.nord3 },
    SignifySignDelete {fg = clrs.nord11, bg = clrs.nord3 },

    -- fugitive.vim
    -- > tpope/vim-fugitive
    gitcommitDiscardedFile {fg = clrs.nord11},
    gitcommitUntrackedFile {fg = clrs.nord11},
    gitcommitSelectedFile {fg = clrs.nord14},

    -- davidhalter/jedi-vim
    jediFunction {fg = clrs.nord4, bg = clrs.nord3},
    jediFat {
      fg = clrs.nord8,
      bg = clrs.nord3,
      gui = gui_combine {spec.underline, spec.bold},
    },

    -- NERDTree
    -- > scrooloose/nerdtree
    NERDTreeExecFile {fg = clrs.nord7},
    NERDTreeDirSlash {Keyword},
    NERDTreeHelp {Comment},

    -- CtrlP
    -- > ctrlpvim/ctrlp.vim
    hCtrlPMatch {Keyword},
    CtrlPBufferHid {Normal},

    -- vim-clap
    -- > liuchengxu/vim-clap
    ClapDir {fg = clrs.nord4},
    ClapDisplay {fg = clrs.nord4, bg = clrs.nord1},
    ClapFile {fg = clrs.nord4},
    ClapMatches {fg = clrs.nord8},
    ClapNoMatchesFound {fg = clrs.nord13},
    ClapSelected {fg = clrs.nord7, gui = spec.bold},
    ClapSelectedSign {fg = clrs.nord9},

    -- TODO: What was happening here?
    ClapFuzzyMatches {fg = clrs.nord8, bg = clrs.nord9},

    ClapCurrentSelection {PmenuSel},
    ClapCurrentSelectionSign {ClapSelectedSign},
    ClapInput {Pmenu},
    ClapPreview {Pmenu},
    ClapProviderAbout {ClapDisplay},
    ClapProviderColon {Type},
    ClapProviderId {Type},

    -- vim-indent-guides
    -- > nathanaelkane/vim-indent-guides
    IndentGuidesEven {bg = clrs.nord1},
    IndentGuidesOdd {bg = clrs.nord2},

    -- vim-plug
    -- > junegunn/vim-plug
    plugDeleted {fg = clrs.nord11},

    -- vim-signature
    -- > kshenoy/vim-signature
    SignatureMarkText {fg = clrs.nord8},

    -- vim-startify
    -- > mhinz/vim-startify
    StartifyFile {fg = clrs.nord11},
    StartifyFooter {fg = clrs.nord7},
    StartifyHeader {fg = clrs.nord15},
    StartifyNumber {fg = clrs.nord13},
    StartifyPath {fg = clrs.nord8},
    StartifyBracket {Delimiter},
    StartifySlash {Normal},
    StartifySpecial {Comment},

    -- +--- Languages ---+
    -- Haskell
    -- > neovimhaskell/haskell-vim
    haskellPreProc {fg = clrs.nord10},
    haskellType {fg = clrs.nord7},
    haskellPragma {haskellPreProc},

    -- JavaScript
    -- > pangloss/vim-javascript
    jsGlobalNodeObjects {fg = clrs.nord8, gui = spec.italic},
    hjsBrackets {Delimiter},
    jsFuncCall {Function},
    jsFuncParens {Delimiter},
    jsThis {Keyword},
    jsNoise {Delimiter},
    jsPrototype {Keyword},
    jsRegexpString {SpecialChar},

    -- TypeScript
    -- > HerringtonDarkholme/yats.vim
    typescriptBOMWindowMethod {fg = clrs.nord8, gui = spec.italic},
    typescriptClassName {fg = clrs.nord7},
    typescriptDecorator {fg = clrs.nord12},
    typescriptInterfaceName {fg = clrs.nord7, gui = spec.bold},
    typescriptRegexpString {fg = clrs.nord13},
    -- TypeScript JSX
    tsxAttrib {fg = clrs.nord7},
    typescriptOperator {Operator},
    typescriptBinaryOp {Operator},
    typescriptAssign {Operator},
    typescriptMember {Identifier},
    typescriptDOMStorageMethod {Identifier},
    typescriptArrowFuncArg {Identifier},
    typescriptGlobal {typescriptClassName},
    typescriptBOMWindowProp {Function},
    typescriptArrowFuncDef {Function},
    typescriptAliasDeclaration {Function},
    typescriptPredefinedType {Type},
    typescriptTypeReference {typescriptClassName},
    typescriptTypeAnnotation {Structure},
    typescriptDocNamedParamType {SpecialComment},
    typescriptDocNotation {Keyword},
    typescriptDocTags {Keyword},
    typescriptImport {Keyword},
    typescriptExport {Keyword},
    typescriptTry {Keyword},
    typescriptVariable {Keyword},
    typescriptBraces {Normal},
    typescriptObjectLabel {Normal},
    typescriptCall {Normal},
    typescriptClassHeritage {typescriptClassName},
    typescriptFuncTypeArrow {Structure},
    typescriptMemberOptionality {Structure},
    typescriptNodeGlobal {typescriptGlobal},
    typescriptTypeBrackets {Structure},
    tsxEqual {Operator},
    tsxIntrinsicTagName {htmlTag},
    tsxTagName {tsxIntrinsicTagName},

    -- Markdown
    -- > plasticboy/vim-markdown
    mkdCode {fg = clrs.nord7},
    mkdFootnote {fg = clrs.nord8},
    mkdRule {fg = clrs.nord10},
    mkdLineBreak {fg = clrs.nord9},
    mkdBold {Bold},
    mkdItalic {Italic},
    mkdString {Keyword},
    mkdCodeStart {mkdCode},
    mkdCodeEnd {mkdCode},
    mkdBlockquote {Comment},
    mkdListItem {Keyword},
    mkdListItemLine {Normal},
    mkdFootnotes {mkdFootnote},
    mkdLink {markdownLinkText},
    mkdURL {markdownUrl},
    mkdInlineURL {mkdURL},
    mkdID {Identifier},
    mkdLinkDef {mkdLink},
    mkdLinkDefTarget {mkdURL},
    mkdLinkTitle {mkdInlineURL},
    mkdDelimiter {Keyword},

    -- Vimwiki
    -- > vimwiki/vimwiki
    -- TODO: Add missing

    VimwikiLink {fg = clrs.nord8, gui = spec.underline},
    VimwikiHeaderChar {markdownHeadingDelimiter},
    VimwikiHR {Keyword},
    VimwikiList {markdownListMarker},

    -- YAML
    -- > stephpy/vim-yaml
    yamlKey {fg = clrs.nord7},

    -- gitsigns.nvim
    -- > lewis6991/gitsigns.nvim
    GreenSign {fg = clrs.nord14, bg = clrs.nord3 },
    BlueSign {fg = clrs.nord10, bg = clrs.nord3 },
    RedSign {fg = clrs.nord11, bg = clrs.nord3 },
    PurpleSign {fg = clrs.nord15, bg = clrs.nord3 },

  }
end)

return theme

-- vi:nowrap

