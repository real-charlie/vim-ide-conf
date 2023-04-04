set nocompatible
filetype off

set rtp=~/.vim/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/a.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
call vundle#end()
filetype plugin indent on
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set smartindent
set autoindent 

map <Leader>t <plug>NERDTreeTabsToggle<CR>

set background=dark
set t_Co=256
colorscheme gruvbox

set lines=60 columns=200

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_check = ['eslint']
let g:syntastic_enable_signs = 1
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['javascript', 'c', 'c++'] }
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_check_on_insert = 1
let g:syntastic_error_symbol = '!'
let g:syntastic_warning_symbol = "-"
augroup synt
  au!
  au FileType tex let b:syntastic_mode = "active"
augroup END
syntax enable

set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

nmap <silent> <leader>b :TagbarToggle<CR>
