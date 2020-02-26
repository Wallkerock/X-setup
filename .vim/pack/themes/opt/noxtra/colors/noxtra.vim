"Basic {{{
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "noxtra"

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

let s:is_dark=(&background == 'dark')

if s:is_dark
  set background=dark
else
  set background=light
endif

" }}}

" Palette: {{{
let s:colors = {}

let s:colors.dark = {}
let s:colors.dark.bg = "#222222"
let s:colors.dark.light = "#393939"
let s:colors.dark.lighter = "#444444"
let s:colors.dark.dark = "#141413"
let s:colors.dark.fg = "#d8d6d2"
let s:colors.dark.fg_alt = "#888682"

let s:colors.dark.fresh_green = "#b8d98f"
let s:colors.dark.green = "#a3be8c"
let s:colors.dark.blue = "#0a9dff"
let s:colors.dark.teal = "#83a598"
let s:colors.dark.orange = "#ebcb8b"
let s:colors.dark.purple = "#c58aea"
let s:colors.dark.yellow = "#f2cb80"
let s:colors.dark.red = "#ff2c4b"
let s:colors.dark.brown = "#353534"

let s:colors.light = {}
let s:colors.light.bg = "#eeeeee"
let s:colors.light.dark = "#dedede"
let s:colors.light.darker = "#c8c09f"
let s:colors.light.fg = "#353535"
let s:colors.light.fg_alt = "#777777"

let s:colors.light.fresh_green = "#689d6a"
let s:colors.light.green = "#739e4c"
let s:colors.light.blue = "#7aaade"
let s:colors.light.teal = "#83a598"
let s:colors.light.orange = "#d19a66"
let s:colors.light.purple = "#913256"
let s:colors.light.yellow = "#d79921"
let s:colors.light.red = "#cc241d"
let s:colors.light.brown = "#504945"

let s:none = "NONE"
" }}}

" Highlight function {{{
function!  s:GuiFor(group, ...)
  let histring = 'hi ' . a:group . ' '

  if a:0 >= 1 && strlen(a:1)
    let histring .= 'guibg=' . a:1 . ' '
  else
    let histring .= 'guibg=NONE '
  endif

  if a:0 >= 2 && strlen(a:2)
    let histring .= 'guifg=' . a:2 . ' '
  else
    let histring .= 'guifg=NONE '
  endif

  if a:0 >= 3 && strlen(a:3)
    let histring .= 'gui=' . a:3 . ' '
  else
    let histring .= 'gui=NONE '
  endif

  execute histring
endfunction
" }}}

" Syntax Highlighting {{{

" Current colors {{{
" bg_alt used for inactive statusline, cursorcol, colorcol
if s:is_dark
  let s:cur = s:colors.dark
  let s:cur.fg = s:colors.dark.fg
  let s:cur.fg_a = s:colors.dark.fg_alt

  let s:cur.bg = s:colors.dark.bg
  let s:cur.split = s:colors.dark.lighter
  let s:cur.bg_alt = s:colors.dark.light
  let s:cur.fold = s:colors.dark.dark
  let s:cur.status = s:colors.dark.brown
else
  let s:cur = s:colors.light
  let s:cur.fg = s:colors.light.fg
  let s:cur.fg_a = s:colors.light.fg_alt

  let s:cur.bg = s:colors.light.bg
  let s:cur.split = s:colors.light.dark
  let s:cur.bg_alt = s:colors.light.dark
  let s:cur.fold = s:colors.light.dark
  let s:cur.status = s:colors.light.darker
endif
" }}}

" Basic {{{
call s:GuiFor('NonText', s:none, s:cur.fg_a)
call s:GuiFor('Normal', s:cur.bg, s:cur.fg)
call s:GuiFor('Comment', s:none, s:cur.fg_a)
call s:GuiFor('Title', s:none, s:cur.fresh_green, 'bold')
call s:GuiFor('Include', s:none, s:cur.fresh_green)
call s:GuiFor('Special', s:none, s:cur.orange)
call s:GuiFor('Structure', s:none, s:cur.orange)
call s:GuiFor('PreProc', s:none, s:cur.purple)
call s:GuiFor('SpecialChar', s:none, s:cur.orange)
call s:GuiFor('String', s:none, s:cur.green)
call s:GuiFor('Directory', s:none, s:cur.orange)
call s:GuiFor('Repeat', s:none, s:cur.purple)
"}}}

"Statusline {{{
call s:GuiFor('StatusLine', s:cur.blue, s:cur.bg, 'bold')
call s:GuiFor('StatusLineNC', s:cur.bg_alt)

call s:GuiFor('ColorColumn', s:cur.bg_alt)
call s:GuiFor('VertSplit', s:none, s:cur.split)
call s:GuiFor('Todo', s:cur.bg_alt, s:cur.teal, 'bold')
call s:GuiFor('WildMenu', s:cur.bg, s:cur.fg, 'bold')
call s:GuiFor('MoreMsg', s:cur.bg_alt, s:cur.fg_a)
"}}}

" Lines {{{
call s:GuiFor('Folded', s:none, s:cur.fg_a)
call s:GuiFor('FoldColumn', s:cur.fold)
call s:GuiFor('SignColumn', s:cur.fold)
call s:GuiFor('LineNr', s:none, s:cur.fg_a)
"}}}

" Cursor {{{
call s:GuiFor('CursorIM', s:cur.purple)
call s:GuiFor('CursorLineNr', s:none, s:cur.yellow)
call s:GuiFor('Cursor', s:cur.blue)
call s:GuiFor('CursorLine', s:cur.bg_alt)
call s:GuiFor('CusorLineNr', s:cur.bg, s:cur.yellow, 'bold')
"}}}

" Tabline {{{
call s:GuiFor('TabLineFill', s:cur.bg_alt, s:cur.bg)
call s:GuiFor('TabLine', s:cur.bg)
call s:GuiFor('TabLineSel', s:cur.blue, s:cur.bg)
"}}}

" Search {{{
call s:GuiFor('IncSearch', s:cur.blue, s:cur.bg)
call s:GuiFor('Search', s:cur.orange, s:cur.bg)
"}}}

" Pum {{{
call s:GuiFor('Pmenu', s:cur.status)
call s:GuiFor('PmenuSbar')
call s:GuiFor('PmenuSel', s:cur.blue, s:cur.bg, 'bold')
call s:GuiFor('PmenuThumb', s:cur.fg_a)

call s:GuiFor('MatchParen', s:none, s:none, 'reverse')
call s:GuiFor('ModeMsg', s:none, s:cur.yellow, 'bold')

call s:GuiFor('FoldColumn', s:none, s:cur.orange)
call s:GuiFor('SpecialKey', s:none, s:cur.red)

call s:GuiFor('ErrorMsg', s:none, s:cur.red)
call s:GuiFor('Error', s:none, s:cur.red)
call s:GuiFor('Question', s:none, s:cur.yellow)
call s:GuiFor('WarningMsg', s:none, s:cur.yellow, 'bold')

call s:GuiFor('Visual', s:none, s:none, 'reverse')
call s:GuiFor('VisualNOS', s:none, s:none, 'reverse')
"}}}

" Vim Features {{{
call s:GuiFor('Menu', s:cur.brown)
call s:GuiFor('Scrollbar', s:none, s:cur.brown)
call s:GuiFor('Tooltip', s:cur.red)
"}}}

" Clear this stuff {{{
call s:GuiFor('Boolean')
call s:GuiFor('Character')
call s:GuiFor('Conceal')
call s:GuiFor('Conditional')
call s:GuiFor('Constant')
call s:GuiFor('Debug')
call s:GuiFor('Define')
call s:GuiFor('Delimiter')
call s:GuiFor('Directive')
call s:GuiFor('Exception')
call s:GuiFor('Float')
call s:GuiFor('Format')
call s:GuiFor('Function')
call s:GuiFor('Identifier')
call s:GuiFor('Ignore')
call s:GuiFor('Keyword')
call s:GuiFor('Label')
call s:GuiFor('Macro')
call s:GuiFor('Number')
call s:GuiFor('Operator')
call s:GuiFor('PreCondit')
call s:GuiFor('Repeat')
call s:GuiFor('SpecialComment')
call s:GuiFor('Statement')
call s:GuiFor('StorageClass')
call s:GuiFor('Tag')
call s:GuiFor('Typedef')
call s:GuiFor('Type')
call s:GuiFor('Underlined')
"}}}

" Diff {{{
call s:GuiFor('DiffAdd', s:none, s:cur.fresh_green)
call s:GuiFor('diffAdded', s:none, s:cur.fresh_green)
call s:GuiFor('DiffChange', s:none, s:cur.yellow)
call s:GuiFor('diffChanged', s:none, s:cur.yellow)
call s:GuiFor('DiffDelete', s:none, s:cur.red)
call s:GuiFor('diffRemoved', s:none, s:cur.red)
call s:GuiFor('DiffText', s:none, s:cur.teal)
call s:GuiFor('diffLine', s:none, s:cur.teal)
"}}}

" Spell {{{
call s:GuiFor('SpellBad', s:none, s:cur.red, 'bold,underline')
call s:GuiFor('SpellCap', s:none, s:cur.red)
call s:GuiFor('SpellLocal', s:none, s:cur.red)
call s:GuiFor('SpellRare', s:none, s:cur.red)
"}}}

" ALE {{{
call s:GuiFor('ALEWarning', s:none, s:cur.yellow, 'bold,underline')
call s:GuiFor('ALEError', s:none, s:cur.red, 'bold,underline')
call s:GuiFor('ALEInfo', s:none, s:cur.blue, 'bold,underline')

call s:GuiFor('ALEInfoSign', s:none, s:cur.blue)
call s:GuiFor('ALEErrorSign', s:cur.red, s:cur.bg)
call s:GuiFor('ALEWarningSign', s:cur.yellow, s:cur.bg)
" }}}

" vim-markdown {{{
call s:GuiFor('mkdListItem', s:none, s:cur.fg_a)
call s:GuiFor('mkdDelimiter', s:none, s:cur.purple)
call s:GuiFor('yamlBlockMappingKey', s:none, s:cur.fg)
call s:GuiFor('yamlKeyValueDelimiter', s:none, s:cur.fg)
call s:GuiFor('texMath', s:cur.bg, s:cur.fg)
call s:GuiFor('texMathOper', s:cur.bg, s:cur.fg)
call s:GuiFor('texMathZoneY', s:cur.bg, s:cur.fg)
call s:GuiFor('texStatement', s:cur.bg, s:cur.fg)
call s:GuiFor('texMathMathcher', s:cur.bg, s:cur.fg)
call s:GuiFor('mkdNonListItemBlock', s:cur.bg, s:cur.fg)
" }}}

" Haskell {{{
call s:GuiFor('haskellBacktick', s:none, s:cur.green)
call s:GuiFor('haskellIdentifier', s:none, s:cur.orange)
call s:GuiFor('haskellKeyword', s:none, s:cur.fg)
call s:GuiFor('haskellDeclKeyword', s:none, s:cur.fg)
call s:GuiFor('haskellWhere', s:none, s:cur.fg)
" }}}

" Js {{{
call s:GuiFor('jsStorageClass', s:none, s:cur.fg)
call s:GuiFor('jsPrototype', s:cur.bg, s:cur.fg)
call s:GuiFor('jsFunction', s:none, s:cur.fg)
call s:GuiFor('jsThis', s:none, s:cur.fg)
call s:GuiFor('jsArrowFunction', s:none, s:cur.fg)
call s:GuiFor('jsGlobalNodeObjects', s:none, s:cur.fg)
call s:GuiFor('jsReturn', s:none, s:cur.fg)
" }}}

" }}}
