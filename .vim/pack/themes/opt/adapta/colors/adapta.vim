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
let g:colors_name = "adapta"
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
hi LineNr		  term=underline  cterm=bold  ctermfg=darkcyan	guifg=Yellow
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#80a0ff
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi Special		  term=bold  cterm=bold ctermfg=red  guifg=Orange
hi Identifier	  term=underline   ctermfg=brown  guifg=#40ffff
hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc		  term=underline  ctermfg=darkmagenta   guifg=#ff80ff
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
"hi CursorLine	  term=underline  guibg=#555555 cterm=underline
"hi CursorColumn	  term=underline  guibg=#555555 cterm=underline
hi MatchParen	  term=reverse  ctermfg=blue guibg=Blue
hi TabLine		  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Underlined	  term=underline cterm=bold,underline ctermfg=lightblue guifg=lightblue gui=bold,underline
hi Ignore		  ctermfg=black ctermbg=black guifg=black guibg=black
hi EndOfBuffer	  term=bold  cterm=bold  ctermfg=darkred guifg=#cc0000 gui=bold

" LINE NUMBER
"hi LineNr ctermbg=Black ctermfg=DarkGrey

" CURSOR LINE
hi Cursor guifg=fg	guibg=Green
hi CursorLine term=bold cterm=bold ctermbg=Black guibg=Grey40 guifg=LightGrey
hi CursorLineNr term=bold cterm=bold guifg=#050505 guibg=lightgrey ctermfg=255 ctermbg=006
" hi CursorColumn term=bold ctermbg=236 guibg=Grey40

" BRACKETS COLOR
hi MatchParen cterm=none ctermbg=darkred ctermfg=white

" STATUS BAR COLORS
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=023 ctermbg=255
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=255 ctermbg=006
"hi statusline guifg=black guibg=#8fbfdc ctermfg=255 ctermbg=006
hi StatusLine term=bold,reverse  cterm=bold ctermfg=255 ctermbg=006 gui=bold guifg=blue guibg=white
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue

hi User1 ctermfg=255 ctermbg=023 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=255 ctermbg=Black guibg=#303030 guifg=#adadad
hi User3 ctermfg=Black ctermbg=Black guibg=#303030 guifg=#303030
hi User4 ctermfg=023 ctermbg=023 guibg=#4e4e4e guifg=#4e4e4e

" Status line
	" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

	" Status Line Custom
	let g:currentmode={
	    \ 'n'  : 'Normal',
	    \ 'no' : 'Normal·Operator Pending',
	    \ 'v'  : 'Visual',
	    \ 'V'  : 'V·Line',
	    \ '^V' : 'V·Block',
	    \ 's'  : 'Select',
	    \ 'S'  : 'S·Line',
	    \ '^S' : 'S·Block',
	    \ 'i'  : 'Insert',
	    \ 'R'  : 'Replace',
	    \ 'Rv' : 'V·Replace',
	    \ 'c'  : 'Command',
	    \ 'cv' : 'Vim Ex',
	    \ 'ce' : 'Ex',
	    \ 'r'  : 'Prompt',
	    \ 'rm' : 'More',
	    \ 'r?' : 'Confirm',
	    \ '!'  : 'Shell',
	    \ 't'  : 'Terminal'
	    \}


hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
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
