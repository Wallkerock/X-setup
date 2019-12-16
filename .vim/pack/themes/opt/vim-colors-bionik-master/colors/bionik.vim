"   ____  _             _ _    
"  | __ )(_) ___  _ __ (_) | __
"  |  _ \| |/ _ \| '_ \| | |/ /
"  | |_) | | (_) | | | | |   < 
"  |____/|_|\___/|_| |_|_|_|\_\
"
"  A light vim colorscheme with green comments and familiar keyword colors.
"
"
" Author: Marvin Dostal
" License: ISC
"

set background=light

" -------------------
" Default Stuff to do
" -------------------
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "bionik"

"Gui Colors
let Black_DarkGray = '#101010'
let DarkBlue       = '#0A5594'
let DarkGreen      = '#00B800'
let DarkCyan       = '#00986A'
let LightCyan      = '#5ffdff'
let DarkRed        = '#E60000'
let DarkMagenta    = '#B30070'
let DarkYellow     = '#E66E00'
let Gray           = '#C0C0C0'
let LightGray      = '#E0E0E0'
let LighterGray    = '#F8F8F8'
let NoneFG         = '#000000'
let NoneBG         = '#FFFFFF'
let LightBlue      = '#428ecf'

"                        term            ctermfg             ctermbg             guifg                  guibg                    cterm                     gui
" Syntax (:help group-name)

exe 'hi Normal           term=none       ctermfg=none        ctermbg=none        guifg=' . NoneFG .   ' guibg=' . NoneBG .     ' cterm=none                gui=none'
exe 'hi LineNr           term=none       ctermfg=none        ctermbg=7           guifg=' . NoneFG .   ' guibg=' . LightGray .  ' cterm=none                gui=none'
exe 'hi CursorLineNr     term=none       ctermfg=none        ctermbg=15          guifg=' . NoneFG .   ' guibg=' . LighterGray .' cterm=bold,underline      gui=bold'
exe 'hi FoldColumn       term=none       ctermfg=6           ctermbg=none        guifg=' . DarkCyan . ' guibg=' . NoneBG .     ' cterm=reverse             gui=reverse'
exe 'hi Folded           term=none       ctermfg=6           ctermbg=none        guifg=' . DarkCyan . ' guibg=' . NoneBG .     ' cterm=reverse,italic      gui=reverse,italic'
exe 'hi ColorColumn      term=none       ctermfg=none        ctermbg=7                                  guibg=' . LighterGray. ' cterm=none                gui=none'
exe 'hi CursorLine       term=none       ctermfg=none        ctermbg=none                               guibg=' . LighterGray. ' cterm=none                gui=none'
exe 'hi Search           term=reverse    ctermfg=none        ctermbg=7           guifg=' . NoneFG .   ' guibg=' . LightGray .  ' cterm=reverse             gui=none'
exe 'hi MatchParen       term=reverse    ctermfg=none        ctermbg=14                                 guibg=' . LightCyan .  ' cterm=none                gui=none'
exe 'hi Underlined       term=underline  ctermfg=none        ctermbg=none                                                        cterm=underline           gui=underline'
exe 'hi Error            term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed   .' guibg=' . NoneBG .     ' cterm=bold,reverse        gui=bold,reverse'
exe 'hi ErrorMsg         term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed   .' guibg=' . NoneBG .     ' cterm=reverse             gui=reverse'
exe 'hi WarningMsg       term=none       ctermfg=3           ctermbg=none        guifg=' . DarkYellow.' guibg=' . NoneBG .     ' cterm=reverse             gui=reverse'
exe 'hi StatusLine       term=none       ctermfg=4           ctermbg=none        guifg=' . NoneBG    .' guibg=' . DarkBlue .   ' cterm=bold,reverse        gui=bold'
exe 'hi Constant         term=none       ctermfg=none        ctermbg=none        guifg=' . NoneFG .   ' guibg=' . NoneBG .     ' cterm=bold                gui=bold '
exe 'hi Boolean          term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=bold                gui=bold'
exe 'hi String           term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=none                gui=none'
exe 'hi Character        term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=none                gui=none'
exe 'hi Number           term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=none                gui=none'
exe 'hi Identifier       term=none       ctermfg=6           ctermbg=none        guifg=' . DarkCyan . ' guibg=' . NoneBG .     ' cterm=none                gui=none'
exe 'hi Statement        term=bold       ctermfg=4           ctermbg=none        guifg=' . DarkBlue . ' guibg=' . NoneBG .     ' cterm=bold,italic         gui=bold,italic'
exe 'hi Comment          term=none       ctermfg=2           ctermbg=none        guifg=' . DarkGreen .' guibg=' . NoneBG .     ' cterm=none                gui=none'
exe 'hi Todo             term=standout   ctermfg=4           ctermbg=11          guifg=Blue             guibg=Yellow             cterm=underline,italic    gui=underline,italic'
exe 'hi Special          term=none       ctermfg=5           ctermbg=none        guifg=' . DarkMagenta.' guibg=' . NoneBG .    ' cterm=none                gui=none'
exe 'hi Title            term=underline  ctermfg=4           ctermbg=none        guifg=' . DarkBlue .  ' guibg=' . NoneBG .    ' cterm=underline,bold      gui=underline,bold'
exe 'hi PreProc          term=none       ctermfg=3          ctermbg=none         guifg=' . DarkYellow .' guibg=' . NoneBG .    ' cterm=none                gui=none'
exe 'hi Type             term=bold       ctermfg=5           ctermbg=none        guifg=' . DarkMagenta.' guibg=' . NoneBG .    ' cterm=bold,italic         gui=bold,italic'
exe 'hi Pmenu            term=none       ctermfg=none        ctermbg=7           guifg=' . NoneFG    .' guibg=' . Gray .       ' cterm=none                gui=none'
exe 'hi PmenuSel         term=none       ctermfg=none        ctermbg=12          guifg=' . NoneFG    .' guibg=' . LightBlue .  ' cterm=none                gui=none'

" Vim features (:help highlight-groups) or (:help hl-...)


" Neovim LanguageClient Stuff
exe 'hi ALEErrorSign   term=none       ctermfg=1           ctermbg=none        guifg=' . DarkRed   .' guibg=' . NoneBG .       ' cterm=bold,reverse        gui=bold,reverse'
exe 'hi ALEWarningSign term=none       ctermfg=3           ctermbg=none        guifg=' . DarkYellow.' guibg=' . NoneBG .       ' cterm=bold,reverse        gui=bold,reverse'
exe 'hi ALEInfoSign    term=none       ctermfg=4           ctermbg=none        guifg=' . DarkBlue  .' guibg=' . NoneBG .       ' cterm=bold,reverse        gui=bold,reverse'

"
" On macOS/MacVim: Change the selection color on focus change (but only if this colorscheme is active).
"
if has("gui_macvim") && !exists("s:augroups_defined")

  hi Visual guibg=MacSelectedTextBackgroundColor

  au FocusLost * if exists("colors_name") && colors_name == "bionik" | hi Visual guibg=MacSecondarySelectedControlColor | endif
  au FocusGained * if exists("colors_name") && colors_name == "bionik" | hi Visual guibg=MacSelectedTextBackgroundColor | endif

  let s:augroups_defined = 1
else
    hi Visual term=reverse ctermfg=none ctermbg=none cterm=reverse gui=reverse
endif

" Highlight linking
hi! link CocErrorSign ALEErrorSign
hi! link CocWarningSign ALEWarningSign

