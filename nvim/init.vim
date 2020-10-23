let g:netrw_banner = 0
let g:netrw_liststyle = 3

set t_ZH=^[[3m
set t_ZR=^[[23m

""if !exists('g:vscode')

"" source ~/.config/nvim/colors/gruvbox.vim

"" let g:despacio_Sunset = 1
"" colorscheme despacio
"" let g:film_noir_color='green'
"" set background=dark
"" let g:two_firewatch_italics=1
"" color two-firewatch


"" hi NonText guibg=NONE ctermbg=NONE
"" hi Normal guibg=NONE ctermbg=NONE

set termguicolors

set laststatus=2

set number
syntax on

set showcmd

set showmatch

"" set list lcs=tab:\|\ 

call plug#begin()
Plug 'tpope/vim-markdown'
Plug 'lervag/vimtex'
Plug 'jalvesaq/nvim-r'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'KKPMW/sacredforest-vim'
Plug 'severij/vadelma'
Plug 'kyoto-shift/film-noir'
Plug 'tpope/vim-markdown'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nanotech/jellybeans.vim'
Plug 'alessandroyorba/despacio'
Plug 'rakr/vim-two-firewatch'
Plug 'sts10/vim-pink-moon'
Plug 'preservim/nerdtree'
Plug 'aditya-azad/candle-grey'
Plug 'tpope/vim-surround'
Plug 'pgavlin/pulumi.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/limelight.vim'
Plug 'NieTiger/halcyon-neovim'
call plug#end()

source ~/.config/nvim/statusline.vim

let g:indent_guides_enable_on_vim_startup = 1


"" colorscheme pink-moon
"" colorscheme candle-grey
"" colorscheme pulumi
colorscheme halcyon
"" let g:jellybeans_overrides = {
"" \    'background': { 'guibg': '#212933' },
"" \}

hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE

let g:vimtex_view_general_viewer = 'okular'

inoremap {<Enter> {<Enter>}<Esc>O

map <C-n> :NERDTreeToggle<CR>
" nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '

let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '
