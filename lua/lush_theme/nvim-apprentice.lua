--
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
v.colors_name = 'nvim-apprentice.lua'

local c = {
  background = hsl("#262626"),
  foreground = hsl("#BCBCBC"),
  black = hsl("#1C1C1C"),
  red = hsl("#AF5F5F"),
  green = hsl("#5F875F"),
  yellow = hsl("#87875F"),
  blue = hsl("#5F87AF"),
  magenta = hsl("#5F5F87"),
  cyan = hsl("#5F8787"),
  white = hsl("#6C6C6C"),
  brightblack = hsl("#444444"),
  brightred = hsl("#FF8700"),
  brightgreen = hsl("#87AF87"),
  brightyellow = hsl("#FFFFAF"),
  brightblue = hsl("#87AFD7"),
  brightmagenta = hsl("#8787AF"),
  brightcyan = hsl("#5FAFAF"),
  brightwhite = hsl("#FFFFFF"),
}

local theme = lush(function()
  return {
    Comment      { fg = c.white }, -- any comment
    ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = c.white }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = c.foreground }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = c.background.lighten(5) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { fg = c.green }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = c.blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = c.red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { }, -- error messages on the command line
    VertSplit    { fg = c.background.lighten(10), bg = c.background.lighten(10) }, -- the column separating vertically split windows
    Folded       { fg = c.white }, -- line used for closed folds
    FoldColumn   { fg = c.white }, -- 'foldcolumn'
    SignColumn   { }, -- column where |signs| are displayed
    IncSearch    { fg = c.background, bg = c.brightyellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg = c.background, bg = c.brightyellow }, -- |:substitute| replacement text highlighting
    LineNr       { fg = c.white }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c.brightcyan, bg = c.background.lighten(5) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = c.background.lighten(10) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = c.background.lighten(10), bg = c.brightgreen }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = c.foreground, bg = c.background }, -- normal text
    NormalFloat  { fg = c.foreground, bg = c.background.lighten(10) }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = c.forground, bg = c.background.lighten(10) }, -- Popup menu: normal item.
    PmenuSel     { bg = c.green, fg = c.background.lighten(10) }, -- Popup menu: selected item.
    PmenuSbar    { }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = c.background, bg = c.brightyellow}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg = c.red }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = c.background, bg = c.yellow }, -- status line of current window
    StatusLineNC { fg = c.white, bg = c.background.lighten(10)}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { fg = c.yellow, bg = c.background.lighten(10) }, -- tab pages line, not active tab page label
    TabLineFill  { bg = c.background.lighten(10) }, -- tab pages line, where there are no labels
    TabLineSel   { fg = c.background, bg = c.yellow}, -- tab pages line, active tab page label
    Title        { fg = c.brightwhite }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { fg = c.background, bg = c.brightblue }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { }, -- warning messages
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completion

    Constant       { fg = c.brightred }, -- (preferred) any constant
    String         { fg = c.brightgreen }, --   a string constant: "this is a string"
    Character      { fg = c.brightred }, --  a character constant: 'c', '\n'
    Number         { fg = c.brightred }, --   a number constant: 234, 0xff
    Boolean        { fg = c.brightred }, --  a boolean constant: TRUE, false
    Float          { fg = c.brightred }, --    a floating point constant: 2.3e10

    Identifier     { fg = c.blue }, -- (preferred) any variable name
    Function       { fg = c.brightyellow }, -- function name (also: methods for classes)

    Statement      { fg = c.brightblue }, -- (preferred) any statement
    Conditional    { fg = c.brightblue }, --  if, then, else, endif, switch, etc.
    Repeat         { fg = c.brightblue }, --   for, do, while, etc.
    Label          { fg = c.brightblue }, --    case, default, etc.
    Operator       { fg = c.brightblue }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = c.brightblue }, --  any other keyword
    Exception      { fg = c.brightblue }, --  try, catch, throw

    PreProc        { fg = c.green }, -- (preferred) generic Preprocessor
    Include        { fg = c.green }, --  preprocessor #include
    Define         { fg = c.brightblue }, --   preprocessor #define
    Macro          { fg = c.blue }, --    same as Define
    PreCondit      { fg = c.brightblue }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = c.brightmagenta }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = c.brightmagenta }, -- static, register, volatile, etc.
    Structure      { fg = c.brightblue }, --  struct, union, enum, etc.
    Typedef        { fg = c.brightblue }, --  A typedef

    Special        { fg = c.green }, -- (preferred) any special symbol
    SpecialChar    { fg = c.green }, --  special character in a constant
    Tag            { fg = c.green }, --    you can use CTRL-] on this
    Delimiter      { fg = c.green }, --  character that needs attention
    SpecialComment { fg = c.green }, -- special things inside a comment
    Debug          { fg = c.green }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Underlined { fg = c.brightyellow }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = c.background, bg = c.red }, -- (preferred) any erroneous construct

    Todo           { fg = c.background, bg = c.foreground }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    LspReferenceText                     { }, -- used for highlighting "text" references
    LspReferenceRead                     { }, -- used for highlighting "read" references
    LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { fg = c.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = c.brightred }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg = c.blue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg = c.brightblue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { fg = c.red }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { fg = c.brightred }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { fg = c.blue }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        { fg = c.brightblue }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { fg = c.red, gui = "underline" }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { fg = c.brightred, gui = "underline" }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { fg = c.blue, gui = "underline" }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { fg = c.brightblue, gui = "underline" }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { fg = c.red, bg = c.background.lighten(10) }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { fg = c.brightred, bg = c.background.lighten(10) }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { fg = c.blue, bg = c.background.lighten(10) }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { fg = c.brightblue, bg = c.background.lighten(10) }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { fg = c.red }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { fg = c.brightred }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { fg = c.blue }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { fg = c.brightblue }, -- Used for "Hint" signs in sign column

    TSAnnotation         { },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute          { },    -- (unstable) TODO: docs
    TSBoolean            { },    -- For booleans.
    TSCharacter          { },    -- For characters.
    TSComment            { },    -- For comment blocks.
    TSConstructor        { },    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional        { },    -- For keywords related to conditionnals.
    TSConstant           { },    -- For constants
    TSConstBuiltin       { },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { },    -- For constants that are defined by macros: `NULL` in C.
    TSError              { },    -- For syntax/parser errors.
    TSException          { },    -- For exception related keywords.
    TSField              { },    -- For fields.
    TSFloat              { },    -- For floats.
    TSFunction           { },    -- For function (calls and definitions).
    TSFuncBuiltin        { },    -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro          { },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword            { },    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { },    -- For keywords used to define a fuction.
    TSLabel              { },    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { },    -- For method calls and definitions.
    TSNamespace          { },    -- For identifiers referring to modules and namespaces.
    TSNone               { },    -- TODO: docs
    TSNumber             { },    -- For all numbers
    TSOperator           { },    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { },    -- For parameters of a function.
    TSParameterReference { },    -- For references to parameters of a function.
    TSProperty           { },    -- Same as `TSField`.
    TSPunctDelimiter     { },    -- For delimiters ie: `.`
    TSPunctBracket       { },    -- For brackets and parens.
    TSPunctSpecial       { },    -- For special punctutation that does not fall in the catagories before.
    TSRepeat             { },    -- For keywords related to loops.
    TSString             { },    -- For strings.
    TSStringRegex        { },    -- For regexes.
    TSStringEscape       { },    -- For escape characters within a string.
    TSSymbol             { },    -- For identifiers referring to symbols or atoms.
    TSType               { },    -- For types.
    TSTypeBuiltin        { },    -- For builtin types.
    TSVariable           { },    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { },    -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag                { },    -- Tags like html tag names.
    TSTagDelimiter       { },    -- Tag delimiter like `<` `>` `/`
    TSText               { },    -- For strings considered text in a markup language.
    TSEmphasis           { },    -- For text to be represented with emphasis.
    TSUnderline          { },    -- For text to be represented with an underline.
    TSStrike             { },    -- For strikethrough text.
    TSTitle              { },    -- Text that is part of a title.
    TSLiteral            { },    -- Literal text.
    TSURI                { },    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap

