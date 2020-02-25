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
let g:colors_name = "sollow"

hi Normal		  guifg=white  guibg=black
hi Comment term=NONE cterm=NONE ctermfg=244 gui=NONE guifg=#006300

hi Constant term=bold cterm=bold ctermfg=19 gui=bold guifg=#0000C0
hi String term=NONE cterm=NONE ctermfg=88 gui=NONE guifg=#0000C0
hi Character term=NONE cterm=NONE ctermfg=19 gui=NONE guifg=#0000C0
hi Number term=NONE cterm=NONE ctermfg=19 gui=NONE guifg=#0000C0
hi Boolean term=NONE cterm=bold ctermfg=19 gui=bold guifg=#0000C0
hi Float term=NONE cterm=NONE ctermfg=19 gui=NONE guifg=#0000C0

hi Identifier term=bold cterm=bold ctermfg=25 gui=bold guifg=#000161
hi Function term=bold cterm=bold ctermfg=25 gui=bold guifg=#000161

hi Statement term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Conditional term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Repeat term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Label term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Operator term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Keyword term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Exception term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055

hi PreProc term=bold cterm=bold ctermfg=160 gui=bold guifg=#3e347d
hi Include term=bold cterm=bold ctermfg=25 gui=bold guifg=#3e347d
hi Define term=bold cterm=bold ctermfg=25 gui=bold guifg=#3e347d
hi Macro term=bold cterm=bold ctermfg=25 gui=bold guifg=#3e347d
hi PreCondit term=bold cterm=bold ctermfg=25 gui=bold guifg=#3e347d

hi Type term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi StorageClass term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Structure term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Typedef term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055

hi Special term=bold cterm=bold ctermfg=130 gui=bold guifg=#9425a8
hi SpecialChar term=bold cterm=bold ctermfg=130 gui=bold guifg=#9425a8
hi Tag term=bold cterm=bold ctermfg=130 gui=bold guifg=#9425a8
hi Delimiter term=bold cterm=bold ctermfg=130 gui=bold guifg=#9425a8
hi SpecialComment term=NONE cterm=NONE ctermfg=22 ctermbg=NONE gui=NONE guifg=#006300
hi Debug term=bold cterm=bold ctermfg=130 gui=bold guifg=#9425a8

hi Underlined term=underline cterm=underline ctermfg=130 gui=underline guifg=#9425a8

hi Ignore term=NONE cterm=NONE ctermfg=231 gui=NONE guifg=bg

hi Error term=bold cterm=bold ctermfg=196 ctermbg=231 gui=bold guifg=Red guibg=white

hi Todo term=bold cterm=bold ctermfg=22 ctermbg=151 gui=bold guifg=#006300 guibg=#afd7af

""""""""""""""""""""""
" highlight groups
""""""""""""""""""""""

" hi ColorColumn
hi Conceal term=NONE cterm=NONE ctermfg=253 ctermbg=246 guifg=LightGrey guibg=DarkGrey
hi Cursor term=NONE cterm=NONE ctermfg=231 ctermbg=0 gui=NONE guifg=bg guibg=fg
" hi lCursor
" hi CursorIM
hi clear CursorColumn

hi CursorLine term=bold cterm=bold guifg=LightGrey guibg=Grey40 ctermfg=NONE ctermbg=254
hi CursorLineNr term=bold cterm=bold guifg=#FFFFFF guibg=black ctermfg=234 ctermbg=181
hi LineNr term=NONE cterm=NONE ctermbg=NONE ctermfg=244 gui=NONE guifg=#545454

hi Directory term=NONE cterm=NONE ctermfg=17 gui=NONE guifg=#000161
hi DiffAdd term=NONE cterm=NONE ctermbg=194 guibg=#C8FFC8
hi DiffChange term=NONE cterm=NONE ctermbg=194 guibg=#C8FFC8
hi DiffDelete term=NONE cterm=NONE ctermbg=224 ctermfg=224 gui=NONE guibg=#FFC8C8 guifg=#FFC8C8
hi DiffText term=NONE cterm=NONE ctermbg=84 gui=NONE guibg=#60FF87
hi EndOfBuffer term=NONE cterm=NONE ctermfg=19 gui=NONE guifg=#0000C0
hi ErrorMsg term=NONE cterm=NONE ctermfg=196 ctermbg=231 gui=NONE guifg=Red guibg=white
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Folded term=NONE cterm=NONE ctermfg=17 ctermbg=253 guifg=DarkBlue guibg=LightGrey
hi FoldColumn term=NONE cterm=NONE ctermfg=17 ctermbg=248 guifg=DarkBlue guibg=Grey
hi clear SignColumn
hi IncSearch term=NONE cterm=NONE ctermbg=187 gui=NONE guibg=#cfcca3

hi MatchParen term=NONE cterm=NONE ctermbg=219 gui=NONE guibg=#ffc7fe
hi ModeMsg term=bold cterm=bold ctermfg=237 gui=bold guifg=#303030
hi MoreMsg term=bold cterm=bold ctermfg=28 gui=bold guifg=SeaGreen
" hi NonText
"hi Normal term=NONE cterm=NONE ctermfg=16 ctermbg=231 gui=NONE guifg=black guibg=white
hi Pmenu term=NONE cterm=NONE ctermbg=230 gui=NONE guibg=#FFFFE1
hi PmenuSel term=NONE cterm=NONE ctermfg=16 ctermbg=153 gui=NONE guifg=black guibg=#CDE8FF
hi PmenuSbar term=NONE cterm=NONE ctermbg=254 gui=NONE guibg=#F5F4EF
hi PmenuThumb term=NONE cterm=NONE ctermbg=153 gui=NONE guibg=#CDE8FF
hi Question term=bold cterm=bold ctermfg=28 gui=bold guifg=SeaGreen
" hi QuickFixLine
hi Search term=NONE cterm=NONE ctermbg=227 gui=NONE guibg=#ffff80
" hi SpecialKey
hi SpellBad term=underline cterm=underline ctermbg=231 gui=undercurl guibg=Red
hi SpellCap term=underline cterm=underline ctermbg=4 gui=undercurl guibg=#0000C0
hi SpellLocal term=underline cterm=underline ctermbg=130 gui=undercurl guibg=Magenta
hi SpellRare term=underline cterm=underline ctermbg=115 gui=undercurl guibg=DarkCyan
hi StatusLine term=bold cterm=bold ctermbg=67 ctermfg=231 gui=bold guibg=#4D7A97 guifg=white
hi StatusLineNC term=bold cterm=bold ctermbg=253 ctermfg=231 gui=bold guibg=#D9DEE4 guifg=white
hi StatusLineTerm term=bold cterm=bold ctermfg=231 ctermbg=28 gui=bold guifg=white guibg=DarkGreen
hi StatusLineTermNC term=bold cterm=bold ctermfg=254 ctermbg=28 gui=bold guifg=white guibg=DarkGreen
" hi TabLine
" hi TabLineFill
" hi TabLineSel
" hi Terminal
hi Title term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi Visual term=NONE cterm=NONE ctermbg=153 gui=NONE guibg=#CDE8FF
hi VisualNOS term=bold,underline cterm=bold,underline ctermfg=16 gui=bold,underline
hi WarningMsg term=NONE cterm=NONE ctermfg=196 gui=NONE guifg=Red
hi WildMenu term=NONE cterm=NONE ctermfg=16 ctermbg=226

" BRACKETS COLOR
hi MatchParen cterm=none ctermbg=lightgreen ctermfg=white

" STATUS BAR COLORS
au InsertEnter * hi statusline guifg=White guibg=#FF0000 ctermfg=255 ctermbg=236
au InsertLeave * hi statusline guifg=White guibg=#EEE8D5 ctermfg=236 ctermbg=181
hi statusline guifg=black guibg=NONE ctermfg=236 ctermbg=181

hi User1 ctermfg=015 ctermbg=181 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=238 ctermbg=179 guibg=#303030 guifg=#adadad
hi User3 ctermfg=231 ctermbg=179 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=179 guibg=#4e4e4e guifg=#4e4e4e

" hi Scrollbar
" hi Menu

""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""

hi NERDTreeUp term=NONE cterm=NONE ctermfg=19 ctermbg=229 gui=NONE guifg=#0000C0 guibg=#fafabb
hi NERDTreeDirSlash term=NONE cterm=NONE ctermfg=17 gui=NONE guifg=#000161

""""""""""""""""""""""
" Markdown
""""""""""""""""""""""

hi mkdHeading term=bold cterm=bold ctermfg=17 gui=bold guifg=#7F0055
hi mkdCodeStart term=bold cterm=bold ctermfg=17 gui=bold guifg=#000161
hi mkdCodeEnd term=bold cterm=bold ctermfg=17 gui=bold guifg=#000161
hi mkdCode term=bold cterm=bold ctermfg=17 gui=bold guifg=#000161
hi mkdBold term=bold cterm=bold gui=bold

hi lspReference term=NONE cterm=NONE ctermbg=255 gui=NONE guibg=#EEEEEE


""""""""""""""""""""""
" coc.nvim
""""""""""""""""""""""

hi link CocErrorSign Error
hi link CocErrorHighlight Error
hi CocErrorFloat term=NONE cterm=NONE ctermfg=16 gui=NONE guifg=#000000

hi CocWarningSign term=NONE cterm=NONE ctermfg=203 gui=NONE guifg=#ff5f5f
hi CocWarningHighlight term=NONE cterm=NONE ctermbg=224 gui=NONE guibg=#ffd7d7
hi CocWarningFloat term=NONE cterm=NONE ctermfg=16 gui=NONE guifg=#000000

hi clear CocInfoSign
hi clear CocInfoHighlight
hi clear CocInfoFloat

hi clear CocHintSign
hi clear CocHintHighlight
hi clear CocHintFloat
