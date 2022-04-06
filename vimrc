" Vim Pluggins
" ===============
call plug#begin()

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'preservim/nerdtree'
	Plug 'posva/vim-vue'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'tpope/vim-fugitive'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
	Plug 'yggdroot/indentline'
	Plug 'tpope/vim-unimpaired'
	Plug 'digitaltoad/vim-pug'
	Plug 'dense-analysis/ale'

	" Themes
	" ===============
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'adrian5/oceanic-next-vim'

call plug#end()


" Fix not working backspace key 
" ==============
set backspace=indent,eol,start


" Automatically set auto indent on enter
" ==============
set autoindent


" Set encoding
" ===============
set encoding=UTF-8


" Show line number in editor
" ===============
set number


" Enable mouse support
" ===============
set mouse=a


" Color scheme & visual
" ================
set t_Co=256
syntax on
let g:oceanic_italic_comments = 1
colorscheme oceanicnext
" colorscheme PaperColor

" Airline config
" ==============
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1


" Indentline config - set indent character
" ==============
let g:indentLine_char_list = '.'


" Buffers map key
" ===============
noremap ]b :bnext<cr>
noremap [b :bprev<cr>
nmap <C-b> :Buffers<cr>

" Tabs map key
" ==============
noremap ]t :tabn<cr>
noremap [t :tabp<cr>


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


" fzf - exclude folder
" ================
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git -o -name dist -o -name .nuxt \) -prune -o -print'


" Signify config
" ================
set updatetime=100


" Toggle terminal
" ===============
noremap <Leader>\t :botright vert term<CR>


" Ignore case to ease search
" ===============
set ignorecase


" Vue Pug higlighter
" ===============
let g:vue_pre_processors = ['pug', 'scss']

" vim ale only run on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0


" Backup dir to remove vim clutters
set backup
set backupdir=~/tmp/.vim/backup
set directory=~/tmp/.vim/tmp

""inoremap { {}<Esc>ha
""inoremap ( ()<Esc>ha
""inoremap [ []<Esc>ha
""inoremap " ""<Esc>ha
""inoremap ' ''<Esc>ha
""inoremap ` ``<Esc>ha


" show command suggestion
" ===============
set wildmode


" tab autocomplete command
" ===============
set nocompatible


set incsearch
