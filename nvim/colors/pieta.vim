" " Special
" let wallpaper  = "/home/azamora/Pictures/pieta.png"
" let background = "#050605"
" let foreground = "#c7c9cc"
" let cursor     = "#c7c9cc"
" 
" " Colors
" let color0  = "#050605"
" let color1  = "#679859"
" let color2  = "#9C9D67"
" let color3  = "#D0DC6E"
" let color4  = "#606EA4"
" let color5  = "#9C7D9C"
" let color6  = "#779FBE"
" let color7  = "#c7c9cc"
" let color8  = "#8b8c8e"
" let color9  = "#679859"
" let color10 = "#9C9D67"
" let color11 = "#D0DC6E"
" let color12 = "#606EA4"
" let color13 = "#9C7D9C"
" let color14 = "#779FBE"
" let color15 = "#c7c9cc"

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "pieta"
hi Normal		guifg=#44bed0	guibg=#050605
hi NonText		guifg=#44bed0	guibg=#050605
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


