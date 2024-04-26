-- Built with, Lush
-- Enable lush.ify on this file, run:
--  `:Lushify`

local lush = require("lush")
local hsl = lush.hsl

local palette = {
	darkest = hsl(35, 7, 26),
	darker = hsl(48, 18, 40),
	dark = hsl(48, 18, 75),
	mid = hsl(48, 18, 80),
	light = hsl(48, 18, 90),
	lightest = hsl(48, 18, 100),

	black = hsl(35, 7, 26),
	red = hsl(355, 50, 35),
	green = hsl(120, 30, 35),
	yellow = hsl(60, 30, 50),
	blue = hsl(220, 40, 40),
	magenta = hsl(300, 20, 40),
	cyan = hsl(180, 30, 40),
	white = hsl(48, 18, 88),

	bright_black = hsl(35, 7, 20),
	bright_red = hsl(0, 30, 60),
	bright_green = hsl(120, 30, 60),
	bright_yellow = hsl(60, 40, 70),
	bright_blue = hsl(220, 30, 60),
	bright_magenta = hsl(300, 40, 80),
	bright_cyan = hsl(180, 30, 60),
	bright_white = hsl(48, 18, 100),

    grey   = hsl(0, 0, 40),
	orange = hsl(30, 60, 40),
}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- fg is for text (foreground)
		-- bg is for the background
		-- sp
		-- gui is for effects. It is a comma separated list of effects.
		--bold:          bool, enables or disables bold.
		--italic:        bool, enables or disables italics.
		--underline:     bool, enables or disables underline.
		--underlineline: bool, enables or disables double underline.
		--underdouble:   bool, underlineline in nvim 0.8
		--undercurl:     bool, enables or disables undercurl.
		--underdot:      bool, enables or disables underdot.
		--underdotted:   bool, underdot in nvim 0.8
		--underdash:     bool, enables or disables underdash.
		--underdashed:   bool, underdash in nvim 0.8
		--strikethrough: bool, enables or disables strikethrough.
		--altfont:       bool, enables or disables alternate font in nvim 0.9
		--reverse:       bool, enables or disables flipping fg and bg values.
		--standout:      bool, enables or disables standout.
		--nocombine:     bool, enables or disables nocombine.

		-- Neovim Highlighting.
		-- See :h highlight-groups

		ColorColumn({ bg = palette.dark }), -- Columns set with 'colorcolumn'
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
		IncSearch      { bg = palette.yellow , fg = palette.lightest, gui="bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute     { bg = palette.dark , fg = palette.lightest }, -- |:substitute| replacement text highlighting
		LineNr         { bg = palette.darkest, fg = palette.mid }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove    { bg = palette.dark, fg = palette.darker }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow    { bg = palette.dark, fg = palette.darker}, -- Line number for when the 'relativenumber' option is set, below the cursor line
		-- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		-- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal  { fg = palette.darkest, bg = palette.mid }, -- Normal text
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
		Visual         { bg=palette.dark, fg=palette.darker }, -- Visual mode selection
		-- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg     { }, -- Warning messages
		-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows

		-- Syntax Highlighting
		-- See :h group-name

		Comment         { fg = palette.darker }, -- Any comment


		Constant        { fg = palette.magenta }, --(*) Any constant
		String          { fg = palette.green }, --   A string constant: "this is a string"
		-- Character      { }, --   A character constant: 'c', '\n'
		-- Number         { }, --   A number constant: 234, 0xff
		-- Boolean        { }, --   A boolean constant: TRUE, false
		-- Float          { }, --   A floating point constant: 2.3e10

		-- Identifier     { }, -- (*) Any variable name
        -- Identifier     { fg = palette.blue },

		Function{ fg = palette.orange }, -- Function name (also: methods for classes)

		Statement      { fg=palette.darkest, bg=palette.white }, -- (*) Any statement
		Conditional    { fg=palette.cyan, }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword        { }, --   any other keyword
		Exception      { fg=palette.cyan }, --   try, catch, throw

		-- PreProc        { }, -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		-- Type           { }, -- (*) int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		Special { fg = palette.grey }, -- (*) Any special symbol

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

		sym"@comment"           { fg=palette.darker }, -- Comment
        sym"@comment.documentation" { fg=palette.darker }, -- Comment
        sym"@comment.error"     { bg=palette.red, fg=palette.light}, -- Comment
        sym"@comment.warning"   { bg=palette.orange, fg=palette.light}, -- Comment
        sym"@comment.todo"      { bg=palette.cyan, fg=palette.light}, -- Comment
        sym"@comment.note"      { bg=palette.blue, fg=palette.light}, -- Comment

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
		sym"@function"          { fg=palette.orange }, -- Function
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
		sym"@keyword"           { fg=palette.blue }, -- Keyword

        sym"@keyword.conditional"  { fg=palette.cyan },  -- if, then, else, endif, switch
		sym"@keyword.exception"    { fg=palette.blue },  -- try, catch, throw
        sym"@keyword.operator"     { fg=palette.cyan },  -- "sizeof", "+", "*", etc.
        sym"@keyword.repeat"       { fg=palette.cyan },  -- for, do, while, etc.
        sym"@keyword.return"       { fg=palette.darkest, gui="bold"},  -- for, do, while, etc.

        sym"@keyword.directive"    { fg=palette.magenta},  -- for, do, while, etc.

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
        --
        --
        -- ADDED FROM MANPAGE
        --@variable                       various variable names
        sym"@variable.builtin" { fg=palette.red }, -- built-in variable names (e.g. `this`, `self`)
        --@variable.parameter             parameters of a function
        --@variable.parameter.builtin     special parameters (e.g. `_`, `it`)
        --@variable.member                object and struct fields
        --
        --@constant               constant identifiers
        --@constant.builtin       built-in constant values
        --@constant.macro         constants defined by the preprocessor
        --
        --@module                 modules or namespaces
        --@module.builtin         built-in modules or namespaces
        --@label                  `GOTO` and other labels (e.g. `label:` in C), including heredoc labels
        --
        --@string                 string literals
        --@string.documentation   string documenting code (e.g. Python docstrings)
        --@string.regexp          regular expressions
        --@string.escape          escape sequences
        --@string.special         other special strings (e.g. dates)
        --@string.special.symbol  symbols or atoms
        --@string.special.path    filenames
        --@string.special.url     URIs (e.g. hyperlinks)
        --
        --@character              character literals
        --@character.special      special characters (e.g. wildcards)
        --
        --@boolean                boolean literals
        --@number                 numeric literals
        --@number.float           floating-point number literals
        --
        --@type                   type or class definitions and annotations
        --@type.builtin           built-in types
        --@type.definition        identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
        --
        --@attribute              attribute annotations (e.g. Python decorators, Rust lifetimes)
        --@attribute.builtin      builtin annotations (e.g. `@property` in Python)
        --@property               the key in key/value pairs
        --
        --@function               function definitions
        --@function.builtin       built-in functions
        --@function.call          function calls
        --@function.macro         preprocessor macros
        --
        --@function.method        method definitions
        --@function.method.call   method calls
        --
        --@constructor            constructor calls and definitions
        --@operator               symbolic operators (e.g. `+`, `*`)
        --
        --@keyword                keywords not fitting into specific categories
        --@keyword.coroutine      keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
        --@keyword.function       keywords that define a function (e.g. `func` in Go, `def` in Python)
        --@keyword.import         keywords for including modules (e.g. `import`, `from` in Python)
        --@keyword.type           keywords defining composite types (e.g. `struct`, `enum`)
        --@keyword.modifier       keywords defining type modifiers (e.g. `const`, `static`, `public`)
        --@keyword.repeat         keywords related to loops (e.g. `for`, `while`)
        --@keyword.return         keywords like `return` and `yield`
        --@keyword.debug          keywords related to debugging
        --@keyword.exception      keywords related to exceptions (e.g. `throw`, `catch`)
        --
        --@keyword.conditional         keywords related to conditionals (e.g. `if`, `else`)
        --@keyword.conditional.ternary ternary operator (e.g. `?`, `:`)
        --
        --@keyword.directive           various preprocessor directives and shebangs
        --@keyword.directive.define    preprocessor definition directives
        --
        --@punctuation.delimiter  delimiters (e.g. `;`, `.`, `,`)
        --@punctuation.bracket    brackets (e.g. `()`, `{}`, `[]`)
        --@punctuation.special    special symbols (e.g. `{}` in string interpolation)
        --
        --@comment                line and block comments
        --@comment.documentation  comments documenting code
        --
        --@comment.error          error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
        --@comment.warning        warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
        --@comment.todo           todo-type comments (e.g. `TODO`, `WIP`)
        --@comment.note           note-type comments (e.g. `NOTE`, `INFO`, `XXX`)
        --
        --@markup.strong          bold text
        --@markup.italic          italic text
        --@markup.strikethrough   struck-through text
        --@markup.underline       underlined text (only for literal underline markup!)
        --
        --@markup.heading         headings, titles (including markers)
        --@markup.heading.1       top-level heading
        --@markup.heading.2       section heading
        --@markup.heading.3       subsection heading
        --@markup.heading.4       and so on
        --@markup.heading.5       and so forth
        --@markup.heading.6       six levels ought to be enough for anybody
        --
        --@markup.quote           block quotes
        --@markup.math            math environments (e.g. `$ ... $` in LaTeX)
        --
        --@markup.link            text references, footnotes, citations, etc.
        --@markup.link.label      link, reference descriptions
        --@markup.link.url        URL-style links
        --
        --@markup.raw             literal or verbatim text (e.g. inline code)
        --@markup.raw.block       literal or verbatim text as a stand-alone block
        --
        --@markup.list            list markers
        --@markup.list.checked    checked todo-style list markers
        --@markup.list.unchecked  unchecked todo-style list markers
        --
        --@diff.plus              added text (for diff files)
        --@diff.minus             deleted text (for diff files)
        --@diff.delta             changed text (for diff files)
        --
        --@tag                    XML-style tag names (e.g. in XML, HTML, etc.)
        --@tag.builtin            XML-style tag names (e.g. HTML5 tags)
        --@tag.attribute          XML-style tag attributes
        --@tag.delimiter          XML-style tag delimiters-

		-- Neo Tree
		NeoTreeDirectoryName    { fg=palette.darkest }, -- For directory names.
        NeoTreeDirectoryIcon    { fg=palette.darkest }, -- For directory icons.
		NeoTreeFileName         { fg=palette.darkest }, -- For file names.
		NeoTreeFileIcon         { fg=palette.darkest }, -- For file icons.
		NeoTreeGitModified      { fg=palette.darker, gui="italic" }, -- For files marked as modified by Git.
		NeoTreeGitAdded         { fg=palette.green }, -- For files marked as added by Git.
        NeoTreeGitDeleted       { fg=palette.red }, -- For files marked as deleted by Git.
        NeoTreeGitConflict      { fg=palette.orange, gui="italic bold" }, -- For files marked as in conflict by Git.
        -- NeoTreeGitStaged        { }, -- For files marked as staged by Git.
        -- NeoTreeGitUnmerged      { }, -- For files marked as unmerged by Git.
        -- NeoTreeGitRenamed       { }, -- For files marked as renamed by Git.
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
