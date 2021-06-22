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
set termguicolors
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
set noswapfile

" Plugins

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'leafgarland/typescript-vim'
	Plug 'mbbill/undotree'
	Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vimwiki/vimwiki'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'scrooloose/nerdcommenter'
	Plug 'zchee/deoplete-jedi'
"	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
"  Plug 'nvim-telescope/telescope.nvim'
  Plug 'sainnhe/gruvbox-material'	
"	Plug 'neovim/nvim-lspconfig'
  Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
"	Plug 'vim-airline/vim-airline'
"	Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'
call plug#end()

" let g:gruvbox_italic=1

colorscheme nord



" source $HOME/.config/nvim/plug-config/coc.vim


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

let g:vimwiki_table_mappings = 0

let g:airline_theme='gruvbox-light-soft'

" Alternate way to quit
nnoremap <C-Q> 			:wq!<CR>

" Autocomplete for coc
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

"Use control-c instead of escape
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

let g:deoplete#enable_at_startup = 1
let g:airline_theme='<theme' " <theme> is a valid theme name

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
