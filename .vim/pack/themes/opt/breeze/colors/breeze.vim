" Vim color file
" Maintainer:	David Schweikert <david@schweikert.ch>
" Last Change:	2014 Mar 19

hi clear

let g:colors_name = "breeze"

" Normal should come first
hi Normal     guifg=DarkYellow  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
hi DiffText   ctermbg=Red	   cterm=bold gui=bold guibg=Red
hi Directory  ctermfg=DarkBlue	   guifg=Blue
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi FoldColumn ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
hi Folded     ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi IncSearch  cterm=reverse	   gui=reverse
hi ModeMsg    cterm=bold	   gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
if &background == "light"
    hi Search     ctermfg=NONE	   ctermbg=Yellow guibg=Yellow guifg=NONE
else
    hi Search     ctermfg=Black	   ctermbg=Yellow guibg=Yellow guifg=Black
endif
hi SpecialKey ctermfg=DarkBlue	   guifg=Blue
hi StatusLine cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
hi StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
hi VertSplit  cterm=reverse	   gui=reverse
hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed	   guifg=Red
hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    term=underline cterm=NONE ctermfg=180   gui=NONE guifg=red2
hi Constant   term=NONE cterm=NONE	guibg=NONE guifg=NONE ctermbg=NONE ctermfg=17
hi Identifier cterm=bold ctermfg=DarkCyan    gui=NONE guifg=cyan4 ctermbg=NONE ctermfg=166
hi PreProc    cterm=bold ctermfg=DarkCyan    gui=NONE guifg=cyan4 ctermbg=NONE ctermfg=160
hi Special    cterm=NONE ctermfg=DarkYellow    gui=NONE guifg=deeppink
hi Statement  term=bold cterm=bold	guibg=NONE guifg=NONE ctermbg=NONE ctermfg=29
hi Type	      cterm=NONE ctermfg=Blue	     gui=bold guifg=blue
hi Operator   term=bold cterm=bold	guibg=NONE guifg=NONE ctermbg=NONE ctermfg=21
hi Function	term=bold		ctermfg=White guifg=White
hi Repeat	term=bold cterm=bold	guibg=NONE guifg=NONE ctermbg=NONE ctermfg=21
hi Todo	term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

" LINE NUMBER
hi LineNr cterm=NONE ctermbg=NONE ctermfg=Grey

" CURSOR LINE
hi CursorLine term=bold cterm=bold guifg=LightGrey guibg=Grey40 ctermfg=NONE ctermbg=187
hi CursorLineNr term=bold cterm=bold guifg=#FFFFFF guibg=DarkGreen ctermfg=White ctermbg=187
" hi CursorColumn term=bold ctermbg=236 guibg=Grey40

" BRACKETS COLOR
hi MatchParen cterm=none ctermbg=lightgreen ctermfg=white

" STATUS BAR COLORS
au InsertEnter * hi statusline guifg=White guibg=#FF0000 ctermfg=Red ctermbg=230
au InsertLeave * hi statusline guifg=White guibg=#EEE8D5 ctermfg=006 ctermbg=187
hi statusline guifg=black guibg=NONE ctermfg=006 ctermbg=187

hi User1 term=bold cterm=bold ctermfg=015 ctermbg=187 guibg=#4e4e4e guifg=#adadad
hi User2 term=bold cterm=bold ctermfg=008 ctermbg=187 guibg=#303030 guifg=#adadad
hi User3 term=bold cterm=bold ctermfg=231 ctermbg=187 guibg=#303030 guifg=#303030
hi User4 term=bold cterm=bold ctermfg=239 ctermbg=187 guibg=#4e4e4e guifg=#4e4e4e

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
