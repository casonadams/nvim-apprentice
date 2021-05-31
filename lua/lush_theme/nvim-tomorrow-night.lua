--
-- nord0 = hsl("#2F3541"),
-- nord1 = hsl("#3C4353"),
-- nord2 = hsl("#444D5F"),
-- nord3 = hsl("#4D576A"),
-- nord3_bright = hsl("#616F89"),
-- nord4 = hsl("#D8DEE9"),
-- nord5 = hsl("#E5E9F0"),
-- nord6 = hsl("#ECEFF4"),
-- nord7 = hsl("#8FBCBB"),
-- nord8 = hsl("#87BFCF"),
-- nord9 = hsl("#81A1C1"),
-- nord10 = hsl("#5D81AC"),
-- nord11 = hsl("#BE6069"),
-- nord12 = hsl("#D18771"),
-- nord13 = hsl("#EBCA89"),
-- nord14 = hsl("#A4BF8D"),
-- nord15 = hsl("#B48EAD"),
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
v.colors_name = 'nvim-tomorrow-night'

local bright_level = 20
local dim_level = 40

local normal = {
  background = hsl("#1d1f21"),
  foreground = hsl("#c5c8c6"),
  black = hsl("#000000"),
  red = hsl("#cc6666"),
  green = hsl("#b5bd68"),
  yellow = hsl("#f0c674"),
  blue = hsl("#81a2be"),
  magenta = hsl("#b294bb"),
  cyan = hsl("#8abeb7"),
  white = hsl("#ffffff"),
}

local bright = {
  black = normal.black.lighten(bright_level),
  red = normal.red.lighten(bright_level),
  green = normal.green.lighten(bright_level),
  yellow = normal.yellow.lighten(bright_level),
  blue = normal.blue.lighten(bright_level),
  magenta = normal.magenta.lighten(bright_level),
  cyan = normal.cyan.lighten(bright_level),
  white = normal.white.lighten(bright_level),
}

local dim = {
  black = normal.black.darken(dim_level),
  red = normal.red.darken(dim_level),
  green = normal.green.darken(dim_level),
  yellow = normal.yellow.darken(dim_level),
  blue = normal.blue.darken(dim_level),
  magenta = normal.magenta.darken(dim_level),
  cyan = normal.cyan.darken(dim_level),
  white = normal.white.darken(dim_level),
}

local theme = lush(function()
  return {
    Comment      { fg = dim.white }, -- any comment
    Cursor       { fg = normal.foreground }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = bright.black }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { }, -- directory names (and other special names in listings)
    Conceal      { fg = dim.white }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    DiffAdd      { fg = normal.green, bg = bright.black }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = normal.blue, bg = bright.black }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = normal.red, bg = bright.black }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = normal.yellow }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = normal.red }, -- error messages on the command line
    VertSplit    { fg = normal.background.lighten(10), bg = normal.background.lighten(10) }, -- the column separating vertically split windows
    Folded       { fg = normal.white }, -- line used for closed folds
    FoldColumn   { fg = normal.white }, -- 'foldcolumn'
    SignColumn   { bg = bright.black }, -- column where |signs| are displayed
    IncSearch    { fg = normal.background, bg = normal.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg = normal.background, bg = normal.yellow }, -- |:substitute| replacement text highlighting
    LineNr       { fg = dim.white }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = normal.foreground, bg = bright.black }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = bright.black }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = normal.green }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { fg = normal.foreground, bg = bright.black }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    NonText      { fg = normal.blue }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = normal.foreground, bg = normal.background }, -- normal text
    NormalFloat  { fg = normal.foreground, bg = normal.background.lighten(10) }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = normal.foreground, bg = bright.black }, -- Popup menu: normal item.
    PmenuSel     { fg = bright.black, bg = normal.foreground }, -- Popup menu: selected item.
    PmenuSbar    { bg = normal.green, fg = normal.green }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = dim.green, fg = bright.green }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = bright.green }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = normal.yellow, fg = normal.background }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey   { fg = normal.cyan }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    Search       { fg = normal.background, bg = normal.yellow}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpellBad     { fg = normal.red }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = normal.foreground, bg = bright.black }, -- status line of current window
    StatusLineNC { fg = normal.white, bg = normal.background.lighten(10)}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { fg = normal.foreground, bg = bright.black }, -- tab pages line, not active tab page label
    TabLineFill  { bg = bright.black }, -- tab pages line, where there are no labels
    TabLineSel   { fg = normal.green, bg = bright.black }, -- tab pages line, active tab page label
    Title        { fg = normal.blue }, -- titles for output from ":set all", ":autocmd" etnormal.
    Visual       { bg = bright.black }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { }, -- warning messages
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completbrightion

    Constant       { fg = bright.red }, -- (preferred) any constant
    String         { fg = normal.green }, --   a string constant: "this is a string"
    Character      { fg = bright.red }, --  a character constant: 'c', '\n'
    Number         { fg = bright.red }, --   a number constant: 234, 0xff
    Boolean        { fg = bright.red }, --  a boolean constant: TRUE, false
    Float          { fg = bright.red }, --    a floating point constant: 2.3e10

    Identifier     { fg = normal.red }, -- (preferred) any variable name
    Function       { fg = normal.blue }, -- function name (also: methods for classes)

    Statement      { fg = normal.red }, -- (preferred) any statement
    Conditional    { fg = normal.magenta }, --  if, then, else, endif, switch, etnormal.
    Repeat         { fg = normal.magenta }, --   for, do, while, etnormal.
    Label          { fg = normal.yellow }, --    case, default, etnormal.
    Operator       { fg = normal.foreground }, -- "sizeof", "+", "*", etnormal.
    Keyword        { fg = normal.magenta }, --  any other keyword
    Exception      { fg = normal.magenta }, --  try, catch, throw

    PreProc        { fg = normal.yellow }, -- (preferred) generic Preprocessor
    Include        { fg = normal.blue }, --  preprocessor #include
    Define         { fg = normal.blue }, --   preprocessor #define
    Macro          { fg = normal.red }, --    same as Define
    PreCondit      { fg = normal.blue }, --  preprocessor #if, #else, #endif, etnormal.

    Type           { fg = normal.yellow }, -- (preferred) int, long, char, etnormal.
    StorageClass   { fg = normal.yellow }, -- static, register, volatile, etnormal.
    Structure      { fg = normal.blue }, --  struct, union, enum, etnormal.
    Typedef        { fg = normal.yellow }, --  A typedef

    Special        { fg = normal.cyan }, -- (preferred) any special symbol
    SpecialChar    { fg = dim.yellow }, --  special character in a constant
    Tag            { fg = normal.cyan }, --    you can use CTRL-] on this
    Delimiter      { fg = normal.blue }, --  character that needs attention
    SpecialComment { fg = normal.cyan }, -- special things inside a comment
    Debug          { fg = normal.cyan }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    Ignore     { }, -- (preferred) left blank, hidden  |hl-Ignore|
    Error      { fg = normal.red }, -- (preferred) any erroneous construct
    Todo       { fg = normal.yellow }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { fg = normal.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = bright.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg = normal.blue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg = normal.blue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { fg = normal.red }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { fg = bright.red }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { fg = normal.blue }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        { fg = normal.blue }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { fg = "none", gui = "none" }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { fg = "none", gui = "none" }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { fg = "none", gui = "none" }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { fg = "none", gui = "none" }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { fg = normal.red, bg = bright.black }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { fg = normal.red, bg = bright.black }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { fg = normal.blue, bg = bright.black }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { fg = normal.blue, bg = bright.black }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { fg = normal.red, bg = bright.black }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { fg = bright.red, bg = bright.black }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { fg = normal.blue, bg = bright.black  }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { fg = normal.blue, bg = bright.black  }, -- Used for "Hint" signs in sign column

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

