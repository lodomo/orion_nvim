-- Built with, Lush
-- Enable lush.ify on this file, run:
--  `:Lushify`

local lush = require('lush')
local hsl = lush.hsl

local palette = {
    darkest = hsl(35, 7, 26),
    darker  = hsl(48, 18, 40),
    dark    = hsl(48, 18, 75),
    mid     = hsl(48, 18, 80),
    light   = hsl(48, 18, 90),
    lightest = hsl(48, 18, 100),

    black   = hsl(35, 7, 26),
    red     = hsl(0, 30, 40),
    green   = hsl(120, 30, 35),
    yellow  = hsl(60, 30, 50),
    blue    = hsl(220, 30, 40),
    magenta = hsl(300, 20, 60),
    cyan    = hsl(180, 30, 40),
    white   = hsl(48, 18, 88),

    bright_black   = hsl(35, 7, 20),
    bright_red     = hsl(0, 30, 60),
    bright_green   = hsl(120, 30, 60),
    bright_yellow  = hsl(60, 40, 70),
    bright_blue    = hsl(220, 30, 60),
    bright_magenta = hsl(300, 40, 80),
    bright_cyan    = hsl(180, 30, 60),
    bright_white   = hsl(48, 18, 100),

    orange         = hsl(30, 60, 40),
}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Neovim Highlighting.
    -- fg is for text (foreground)
    -- bg is for the background
    -- sp 
    -- gui is for effects. It is a comma separated list of effects. 
        --bold:          boolean, enables or disables bold.
        --italic:        boolean, enables or disables italics.
        --underline:     boolean, enables or disables underline.
        --underlineline: boolean, enables or disables double underline.
        --underdouble:   boolean, underlineline in nvim 0.8
        --undercurl:     boolean, enables or disables undercurl.
        --underdot:      boolean, enables or disables underdot.
        --underdotted:   boolean, underdot in nvim 0.8
        --underdash:     boolean, enables or disables underdash.
        --underdashed:   boolean, underdash in nvim 0.8
        --strikethrough: boolean, enables or disables strikethrough.
        --altfont:       boolean, enables or disables alternate font in nvim 0.9
        --reverse:       boolean, enables or disables flipping fg and bg values.
        --standout:      boolean, enables or disables standout.
        --nocombine:     boolean, enables or disables nocombine.
    -- See :h highlight-groups

    ColorColumn    { bg=palette.dark }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- ErrorMsg       { }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg=palette.darkest, bg=palette.mid }, -- Normal text
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Syntax Highlighting
    -- See :h group-name

    Comment        { fg=palette.darker }, -- Any comment

    -- Constant       { }, -- (*) Any constant
    String         { fg=palette.green }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { }, -- (*) Any variable name
    Function       { fg=palette.orange, }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg=palette.blue, }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
    
    -- Neo Tree
    -- NeoTreeDirectoryName    { }, -- For directory names.
    -- NeoTreeFileName         { }, -- For file names.
    -- NeoTreeFileIcon         { }, -- For file icons.
    -- NeoTreeGitModified      { }, -- For files marked as modified by Git.
    -- NeoTreeGitAdded         { }, -- For files marked as added by Git.
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
