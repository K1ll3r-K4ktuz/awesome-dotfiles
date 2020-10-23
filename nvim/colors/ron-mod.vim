" local syntax file - set colors on a per-machine basis:
" Vim color file
" Maintainer:	Alberto Zamora <azamorabell@gmail.com>
" Last Change:	2020 march 12

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ron-mod"
hi Normal		guifg=cyan	guibg=#050707
hi NonText		guifg=yellow guibg=#050707
hi comment		guifg=darkgrey
hi constant		guifg=cyan
hi identifier	guifg=cyan
hi statement	guifg=lightblue	gui=NONE
hi preproc		guifg=yellow
hi type			guifg=cyan
hi special		guifg=yellow
hi ErrorMsg		guifg=Black	guibg=lightred
hi WarningMsg	guifg=Black	guibg=lightgreen
hi Error		guibg=Red
hi Todo			guifg=Black	guibg=orange
hi Cursor		guibg=#60a060 guifg=#00ff00
hi Search		guibg=darkgray guifg=black gui=bold
hi IncSearch	gui=NONE guibg=steelblue
hi LineNr		guifg=lightred
hi title		guifg=darkgrey
hi ShowMarksHL ctermfg=cyan ctermbg=lightblue guifg=yellow guibg=black
hi StatusLineNC	gui=NONE guifg=lightblue guibg=darkblue
hi StatusLine	guifg=cyan	guibg=blue
hi label		guifg=gold2
hi operator		guifg=orange
hi clear Visual
hi Visual		term=reverse cterm=reverse gui=reverse
hi DiffChange   guibg=darkgreen
hi DiffText		guibg=olivedrab
hi DiffAdd		guibg=slateblue
hi DiffDelete   guibg=coral
hi Folded		guibg=gray30
hi FoldColumn	guibg=gray30 guifg=white
hi cIf0			guifg=gray
hi diffOnly	guifg=red
