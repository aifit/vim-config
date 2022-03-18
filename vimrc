" Vim Pluggins
" ===============
call plug#begin()

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'tpope/vim-fugitive'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'digitaltoad/vim-pug'
	Plug 'dense-analysis/ale'
	Plug 'yggdroot/indentline'

	" Themes
	" ===============
	Plug 'dikiaap/minimalist'	
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'sickill/vim-monokai'

call plug#end()

" Set encoding
" ===============
set encoding=UTF-8


" Show line number in editor
" ===============
set number


" Enable true colors support
" ===============
set termguicolors


" Enable mouse support
" ===============
set mouse=a

" Color scheme & visual
" ================
set t_Co=256
syntax on
colorscheme PaperColor


" Airline config
" ==============
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1


" Indentline config - set indent character
" ==============
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" Buffers map key
" ===============
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>


" Tabs map key
" ==============
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>


" NERDTree map key
" ================
let NERDTreeShowHidden=1
map <leader>r :NERDTreeFind<cr>
let g:NERDTreeWinPos = "left"


" fzf map key
" ================
silent! nmap <C-p> :Files<CR>
silent! nmap <C-g> :GFiles<CR>
silent! nmap <C-f> :Rg<space>
