" neovim config file

let g:mapleader = "\<Space>"

syntax enable
set hidden
set nowrap
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set iskeyword+=-
set mouse=a
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set tabstop=2
set autoindent
set laststatus=0
set number
set title
set cursorline
set background=dark
set showtabline=2
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set formatoptions-=cro
set clipboard=unnamedplus
set belloff=all
set smarttab
set hlsearch
set smartcase
set linebreak

" Plugins

call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'leafgarland/typescript-vim'
	Plug 'mbbill/undotree'
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vimwiki/vimwiki'
	Plug 'sainnhe/gruvbox-material'
	Plug 'sheerun/vim-polygot'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'scrooloose/nerdcommenter'

	call plug#end()

colorscheme gruvbox-material

source $HOME/.config/nvim/plug-config/coc.vim


" Keybinds

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> 			:resize -2<CR>
nnoremap <M-k> 			:resize +2<CR>
nnoremap <M-h> 			:vertical resize -2<CR>
nnoremap <M-l> 			:vertical resize +2<CR>

" Enables jk and kj as escape key  
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <Esc>viwUi
inoremap <c-u> viwU<Esc>

" Control-n to open NERDTree

nmap <C-n> :NERDTreeToggle<CR>
" Tab in general mode will move to next buffer
nnoremap <TAB> 			:bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> 		:bprevious<CR>

" Alternate way to quit
nnoremap <C-s> 			:w<CR>

" Alternate way to quit
nnoremap <C-Q> 			:wq!<CR>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" <TAB>: completion.
inoremap <<expr><TAB> pumvisible() ? "C\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
