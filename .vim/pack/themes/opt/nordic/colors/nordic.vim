" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nordic"
hi Normal       guifg=Cyan      guibg=Black
hi Comment      term=bold       ctermfg=DarkGray    guifg=#80a0ff
hi Constant     term=underline  ctermfg=73     guifg=Magenta
hi Special      term=bold       ctermfg=DarkMagenta guifg=Red
hi Identifier   term=underline  cterm=bold          ctermfg=Cyan    guifg=#40ffff
hi Statement    term=bold       ctermfg=104      gui=bold        guifg=#aa4444
hi PreProc      term=underline  cterm=bold          ctermfg=115   guifg=#ff80ff
hi Type         term=underline  ctermfg=109  guifg=#60ff60   gui=bold
hi Function     term=bold       ctermfg=White       guifg=White
hi Repeat       term=underline  cterm=bold          ctermfg=White       guifg=white
hi Operator     term=bold       cterm=bold     guifg=Red           ctermbg=NONE    ctermfg=161
hi Ignore       ctermfg=black   guifg=bg
hi Error        term=reverse    ctermbg=Red         ctermfg=White   guibg=Red   guifg=White
hi Todo         term=standout   ctermbg=Yellow      ctermfg=Black   guifg=Blue  guibg=Yellow

" LINE NUMBER
hi LineNr ctermbg=none ctermfg=236

" CURSOR LINE
hi CursorLine term=bold cterm=bold guibg=Grey40 guifg=LightGrey ctermfg=NONE ctermbg=234
hi CursorLineNr term=bold cterm=bold guifg=#050505 guibg=lightgrey ctermfg=15 ctermbg=237
" hi CursorColumn term=bold ctermbg=236 guibg=Grey40

" BRACKETS COLOR
hi MatchParen cterm=none ctermbg=darkred ctermfg=white

" STATUS BAR COLORS

au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=255 ctermbg=232
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=237 ctermbg=255
hi statusline guifg=black guibg=#8fbfdc ctermfg=237 ctermbg=255

hi User1 ctermfg=007 ctermbg=237 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=234 guibg=#303030 guifg=#adadad
hi User3 ctermfg=234 ctermbg=234 guibg=#303030 guifg=#303030
hi User4 ctermfg=237 ctermbg=237 guibg=#4e4e4e guifg=#4e4e4e

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
