" Glitch inspired colorscheme
" Maintainer:	Alberto Zamora <azamorabell@gmail.com>
" Last Change:	2020 march 18

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "digital-sun"
hi Normal		guifg=#d2cfc0	guibg=#130055
hi NonText		guifg=#d2cfc0	guibg=#130055
hi comment		guifg=cyan
hi constant		guifg=#189892
hi identifier		guifg=#5ea695
hi statement		guifg=#FC318E
hi preproc		guifg=#44bed0
hi type			guifg=#5ea695
hi special		guifg=#939086
hi ErrorMsg		guifg=Black	guibg=lightred
hi WarningMsg	guifg=Black	guibg=lightgreen
hi Error		guibg=Red
hi Todo			guifg=Black	guibg=orange
hi Cursor		guibg=#60a060 guifg=#00ff00
hi Search		guibg=#A24C9A guifg=black gui=bold
hi IncSearch	gui=NONE guibg=steelblue
hi LineNr		guifg=#E95E92
hi title		guifg=darkgrey
hi ShowMarksHL ctermfg=cyan ctermbg=lightblue guifg=yellow guibg=black
hi StatusLineNC	gui=NONE guifg=lightblue guibg=darkblue
hi label		guifg=gold2
hi operator		guifg=#FC318E
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


