" File  : efficient.vim
" Author: Matthieu Petiteau <mpetiteau.pro@gmail.com>
" Date  : 01.12.2019
"
" A very simple but efficient monochrome-ish colorscheme.
"

hi clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name="efficient"
set background=dark

"
" Colors
"
hi Normal              ctermfg=231  ctermbg=233  cterm=NONE       guifg=#ffffff  guibg=#121212  gui=NONE
hi Constant            ctermfg=231  ctermbg=233  cterm=NONE       guifg=#ffffff  guibg=#121212  gui=NONE

hi Character           ctermfg=250  ctermbg=NONE cterm=NONE       guifg=#bcbcbc  guibg=NONE     gui=NONE
hi Comment             ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi String              ctermfg=254  ctermbg=NONE cterm=NONE       guifg=#e4e4e4  guibg=NONE     gui=NONE

hi Number              ctermfg=197  ctermbg=NONE cterm=NONE       guifg=#ff005f  guibg=NONE     gui=NONE
hi Float               ctermfg=197  ctermbg=NONE cterm=NONE       guifg=#ff005f  guibg=NONE     gui=NONE
hi Boolean             ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi Identifier          ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE

hi Include             ctermfg=231  ctermbg=NONE cterm=bold       guifg=#ffffff  guibg=NONE     gui=bold
hi Function            ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi Statement           ctermfg=231  ctermbg=NONE cterm=bold       guifg=#ffffff  guibg=NONE     gui=bold
hi Conditional         ctermfg=231  ctermbg=NONE cterm=bold       guifg=#ffffff  guibg=NONE     gui=bold
hi Operator            ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi Repeat              ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE

hi Type                ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi Character           ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi linenr              ctermfg=240  ctermbg=NONE cterm=NONE       guifg=#585858  guibg=NONE     gui=NONE

hi NonText             ctermfg=241  ctermbg=NONE cterm=NONE       guifg=#626262  guibg=NONE     gui=NONE
hi Visual              ctermfg=233  ctermbg=243  cterm=NONE       guifg=#121212  guibg=#767676  gui=NONE

hi Special             ctermfg=250  ctermbg=NONE cterm=NONE       guifg=#bcbcbc  guibg=NONE     gui=NONE
hi SpecialChar         ctermfg=250  ctermbg=NONE cterm=NONE       guifg=#bcbcbc  guibg=NONE     gui=NONE
hi SpecialKey          ctermfg=250  ctermbg=NONE cterm=NONE       guifg=#bcbcbc  guibg=NONE     gui=NONE

hi MatchParen          ctermfg=234  ctermbg=51   cterm=NONE       guifg=#121212  guibg=#00ffff  gui=NONE
hi ColorColumn         ctermfg=NONE ctermbg=236  cterm=NONE       guifg=NONE     guibg=#303030  gui=NONE

hi Cursor              ctermfg=234  ctermbg=51   cterm=NONE       guifg=#121212  guibg=#00ffff  gui=NONE
hi CursorColumn        ctermfg=250  ctermbg=233  cterm=NONE       guifg=#b9b9b9  guibg=#101010  gui=NONE
hi CursorLine          ctermfg=250  ctermbg=233  cterm=NONE       guifg=#b9b9b9  guibg=#101010  gui=NONE
hi CursorLineNR        ctermfg=250  ctermbg=233  cterm=NONE       guifg=#b9b9b9  guibg=#101010  gui=NONE

hi DiffAdd             ctermfg=22   ctermbg=194  cterm=NONE       guifg=#005f00  guibg=#d7ffd7  gui=NONE
hi DiffChange          ctermfg=166  ctermbg=233  cterm=NONE       guifg=#d75f00  guibg=#121212  gui=NONE
hi DiffText            ctermfg=166  ctermbg=228  cterm=NONE       guifg=#d75f00  guibg=#ffff87  gui=NONE
hi DiffDelete          ctermfg=254  ctermbg=197  cterm=NONE       guifg=#e4e4e4  guibg=#ff005f  gui=NONE

hi VertSplit           ctermfg=197  ctermbg=233  cterm=NONE       guifg=#ff005f  guibg=#121212  gui=NONE
hi SignColumn          ctermfg=233  ctermbg=233  cterm=NONE       guifg=#121212  guibg=#121212  gui=NONE

hi IncSearch           ctermfg=51   ctermbg=NONE cterm=bold       guifg=#00ffff  guibg=NONE     gui=bold
hi Search              ctermfg=237  ctermbg=229  cterm=bold       guifg=#3a3a3a  guibg=#ffffaf  gui=bold

hi TODO                ctermfg=190  ctermbg=NONE cterm=NONE       guifg=#d7ff00  guibg=NONE     gui=NONE
hi Error               ctermfg=9    ctermbg=NONE cterm=underline  guifg=#ff0000  guibg=NONE     gui=underline
hi ErrorMsg            ctermfg=9    ctermbg=NONE cterm=underline  guifg=#ff0000  guibg=NONE     gui=underline

hi PreProc             ctermfg=231  ctermbg=NONE cterm=NONE       guifg=#ffffff  guibg=NONE     gui=NONE
hi Title               ctermfg=197  ctermbg=NONE cterm=bold       guifg=#ff005f  guibg=NONE     gui=bold
hi WildMenu            ctermfg=197  ctermbg=NONE cterm=NONE       guifg=#ff005f  guibg=NONE     gui=NONE
hi Underlined          ctermfg=197  ctermbg=NONE cterm=underline  guifg=#ff005f  guibg=NONE     gui=underline
hi Directory           ctermfg=197  ctermbg=NONE cterm=bold       guifg=#ff005f  guibg=NONE     gui=bold

hi Pmenu               ctermfg=233  ctermbg=242  cterm=bold       guifg=#121212  guibg=#6c6c6c  gui=bold
hi PmenuSbar           ctermfg=233  ctermbg=242  cterm=bold       guifg=#121212  guibg=#6c6c6c  gui=bold
hi PmenuThumb          ctermfg=233  ctermbg=242  cterm=bold       guifg=#121212  guibg=#6c6c6c  gui=bold
hi PmenuSel            ctermfg=164  ctermbg=242  cterm=bold       guifg=#d700d7  guibg=#6c6c6c  gui=bold

hi Folded              ctermfg=258  ctermbg=239  cterm=bold       guifg=#eeeeee  guibg=#4e4e4e  gui=bold
hi FoldColumn          ctermfg=258  ctermbg=239  cterm=bold       guifg=#eeeeee  guibg=#4e4e4e  gui=bold

hi Statusline          ctermfg=231  ctermbg=197  cterm=bold       guifg=#eeeeee  guibg=#ff005f  gui=bold
hi StatuslineNC        ctermfg=231  ctermbg=204  cterm=bold       guifg=#eeeeee  guibg=#ff5f87  gui=bold

hi GitGutterAdd        ctermfg=154  ctermbg=233  cterm=NONE       guifg=#afff00  guibg=#121212  gui=NONE
hi GitGutterChange     ctermfg=229  ctermbg=233  cterm=NONE       guifg=#ffffaf  guibg=#121212  gui=NONE
hi GitGutterDelete     ctermfg=197  ctermbg=233  cterm=NONE       guifg=#ff005f  guibg=#121212  gui=NONE

hi htmlTagName         ctermfg=231  ctermbg=NONE cterm=bold       guifg=#ffffff  guibg=NONE     gui=bold
hi pythonEscape        ctermfg=197  ctermbg=NONE cterm=bold       guifg=#ff005f  guibg=NONE     gui=bold
