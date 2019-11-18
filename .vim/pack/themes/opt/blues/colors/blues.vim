" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2016 Sep 04

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "blues"
hi Normal		  guifg=white  guibg=black
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=#cc0000
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold      guifg=#cc0000
hi Directory	  term=bold  cterm=bold  ctermfg=brown  guifg=#cc8000
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=red  guifg=White  guibg=Red
hi Search		  term=reverse  ctermfg=white  ctermbg=red      guifg=white  guibg=Red
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=DarkMagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Cursor		  guifg=bg	guibg=Green
hi Comment		  term=none  cterm=none ctermfg=239 guifg=#80a0ff
hi Constant		  term=underline  cterm=none ctermfg=LightBlue  guifg=#ffa0a0
hi String		  term=underline  cterm=none ctermfg=152 guifg=#ffa0a0
hi Special		  term=none  cterm=none ctermfg=079 guifg=Black
hi Identifier	  term=underline   ctermfg=Blue  guifg=#40ffff
hi Statement	  term=none  cterm=none ctermfg=Yellow  gui=bold  guifg=#ffff60
hi Conditional	  term=none  cterm=none ctermfg=Yellow  gui=bold  guifg=#ffff60
hi Repeat	      term=none  cterm=none ctermfg=White  gui=bold  guifg=#ffff60
hi Label	      term=none  cterm=none ctermfg=White  gui=bold  guifg=#ffff60
hi Operator	      term=none  cterm=none ctermfg=Red  gui=bold  guifg=#ffff60
hi PreProc		  term=underline cterm=bold  ctermfg=LightBlue  guifg=#ff80ff
hi Type			  term=underline  cterm=none ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
hi TabLine		  term=bold,reverse  cterm=none ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=none ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Underlined	  term=underline cterm=bold,underline ctermfg=lightblue guifg=lightblue gui=bold,underline
hi Ignore		  ctermfg=black ctermbg=black guifg=black guibg=black
hi EndOfBuffer	  term=bold  cterm=bold  ctermfg=darkred guifg=#cc0000 gui=bold


" LINE NUMBER
hi LineNr ctermbg=235 ctermfg=Grey

" CURSOR LINE
hi CursorLine term=bold cterm=bold ctermbg=235 guibg=Grey40 guifg=LightGrey
hi CursorLineNr term=bold cterm=bold guifg=#050505 guibg=lightgrey ctermfg=White ctermbg=237
" hi CursorColumn term=bold ctermbg=236 guibg=Grey40

" BRACKETS COLOR
hi MatchParen cterm=none ctermbg=darkred ctermfg=white

" STATUS BAR COLORS

au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=255 ctermbg=black
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=255
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=255

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=235 guibg=#303030 guifg=#adadad
hi User3 ctermfg=235 ctermbg=235 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e


hi link IncSearch		Visual
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
