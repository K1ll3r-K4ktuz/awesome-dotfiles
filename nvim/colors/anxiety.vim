" Anxiety filled colorscheme for Vim
" Maintainer:	Alberto Zamora <azamorabell@gmail.com>
" Last Change:	2020 march 18

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "anxiety"
hi Normal		guifg=#44bed0	guibg=#050707
hi NonText		guifg=#44bed0	guibg=#050707
hi comment		guifg=cyan
hi constant		guifg=#215761
hi identifier		guifg=#215761
hi statement		guifg=#1e5761
hi preproc		guifg=#44bed0
hi type			guifg=#44bed0
hi special		guifg=#215b5c
hi ErrorMsg		guifg=Black	guibg=lightred
hi WarningMsg	guifg=Black	guibg=lightgreen
hi Error		guibg=Red
hi Todo			guifg=Black	guibg=orange
hi Cursor		guibg=#60a060 guifg=#00ff00
hi Search		guibg=darkgray guifg=black gui=bold
hi IncSearch	gui=NONE guibg=steelblue
hi LineNr		guifg=#1e665b
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


