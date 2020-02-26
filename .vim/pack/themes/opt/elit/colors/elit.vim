"Vim color file
"color scheme name: Elit
"author: DrXVII
:set background=light
:highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "elit"

let s:black_ink =       { "gui": "#302010", "cterm": "0"}
let s:red_ink =         { "gui": "#800000", "cterm": "0"}
let s:green_ink =       { "gui": "#006000", "cterm": "0"}
let s:blue_ink =        { "gui": "#0000A8", "cterm": "0"}
let s:teal_ink =        { "gui": "#006090", "cterm": "0"}
let s:purple_ink =      { "gui": "#A000A0", "cterm": "0"}
let s:pencil =          { "gui": "#888888", "cterm": "243"}

let s:white_paper =     { "gui": "#FFFCFA", "cterm": "0"}
let s:old_paper =       { "gui": "#FDF6EC", "cterm": "0"}
let s:antique_paper =   { "gui": "#F0E4D9", "cterm": "0"}

let s:yellow =          { "gui": "#FFFF00", "cterm": "0"}
let s:magenta =         { "gui": "#FF00FF", "cterm": "0"}

function! s:h(group, style)
  let s:ctermformat = "NONE"
  let s:guiformat = "NONE"
  if has_key(a:style, "format")
    let s:ctermformat = a:style.format
    let s:guiformat = a:style.format
  endif

  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")      ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")      ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")      ? a:style.sp.gui   : "NONE")
    \ "gui="     (!empty(s:guiformat) ? s:guiformat   : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
    \ "cterm="   (!empty(s:ctermformat) ? s:ctermformat   : "NONE")
endfunction

call s:h("Normal",          {"fg": s:black_ink,    "bg": s:white_paper})
call s:h("Cursor",          {"fg": s:white_paper,  "bg": s:green_ink})
call s:h("VertSplit",       {"fg": s:pencil,       "bg": s:antique_paper})
call s:h("Folded",          {"fg": s:blue_ink,     "bg": s:antique_paper})
call s:h("FoldColumn",      {"fg": s:red_ink,      "bg": s:antique_paper})
call s:h("ModeMsg",         {"fg": s:red_ink,      "bg": s:old_paper})
call s:h("MoreMsg",         {"fg": s:white_paper,  "bg": s:green_ink})
call s:h("Pmenu",           {"fg": s:pencil,       "bg": s:antique_paper})
call s:h("PmenuSel",        {"fg": s:red_ink,      "bg": s:antique_paper,      "format": "bold"})
call s:h("PmenuSbar",       {"fg": s:red_ink,      "bg": s:antique_paper,      "format": "bold"})
call s:h("NonText",         {"fg": s:red_ink,      "bg": s:antique_paper})
call s:h("Question",        {"fg": s:white_paper,  "bg": s:blue_ink})
call s:h("IncSearch",       {"fg": s:white_paper,  "bg": s:magenta,            "format": "none"})
call s:h("Search",          {"fg": s:black_ink,    "bg": s:yellow,             "format": "bold,italic"})
call s:h("SpecialKey",      {"fg": s:black_ink,    "bg": s:magenta})
call s:h("StatusLine",      {"fg": s:green_ink,    "bg": s:antique_paper,      "format": "none"})
call s:h("StatusLineNC",    {"fg": s:pencil,       "bg": s:old_paper,          "format": "none"})
call s:h("Title",           {"fg": s:red_ink,      "bg": s:white_paper,        "format": "bold"})
call s:h("Visual",          {"fg": s:blue_ink,     "bg": s:yellow})
call s:h("WarningMsg",      {"fg": s:white_paper,  "bg": s:red_ink})
call s:h("Identifier",      {"fg": s:red_ink})
call s:h("Include",         {"fg": s:green_ink,    "bg": s:old_paper})
call s:h("PreProc",         {"fg": s:green_ink,    "bg": s:old_paper})
call s:h("Operator",        {"fg": s:red_ink})
call s:h("Define",          {"fg": s:red_ink})
call s:h("Function",        {"fg": s:red_ink})
call s:h("Structure",       {"fg": s:green_ink})
call s:h("LineNr",          {"fg": s:green_ink,    "bg": s:old_paper})
call s:h("Ignore",          {"fg": s:red_ink})
call s:h("Todo",            {"fg": s:yellow,       "bg": s:red_ink})
call s:h("Directory",       {                      "bg": s:old_paper,          "format": "bold"})
call s:h("ErrorMsg",        {"fg": s:yellow,       "bg": s:red_ink})
call s:h("VisualNOS",       {                      "bg": s:magenta})
call s:h("WildMenu",        {"fg": s:white_paper,  "bg": s:green_ink})
call s:h("DiffAdd",         {                      "bg": s:magenta})
call s:h("DiffChange",      {                      "bg": s:magenta})
call s:h("DiffDelete",      {                      "bg": s:magenta})
call s:h("DiffText",        {                      "bg": s:magenta})
call s:h("Underlined",      {                                                  "format": "underline"})
call s:h("Error",           {"fg": s:yellow,       "bg": s:red_ink})
call s:h("SpellErrors",     {                      "bg": s:magenta})
call s:h("ColorColumn",     {                      "bg": s:old_paper})
call s:h("CursorLine",      {                      "bg": s:old_paper})
call s:h("CursorLineNr",    {"fg": s:red_ink,      "bg": s:white_paper,        "format": "none"})
call s:h("Tabline",         {"fg": s:pencil,       "bg": s:old_paper })
call s:h("TablineFill",     {"fg": s:blue_ink,     "bg": s:antique_paper,      "format": "none" })
call s:h("TablineSel",      {"fg": s:red_ink,      "bg": s:antique_paper,      "format": "bold"})
call s:h("Comment",         {"fg": s:pencil })
call s:h("Statement",       {"fg": s:red_ink,                                  "format": "bold"})
call s:h("Constant",        {"fg": s:purple_ink})
call s:h("Type",            {"fg": s:blue_ink,                                 "format": "none"})
call s:h("String",          {"fg": s:teal_ink})
call s:h("Special",         {"fg": s:red_ink})
call s:h("TagListFileName", {"fg": s:green_ink,                                "format": "bold"})
