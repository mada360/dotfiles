set nocompatible              " be iMproved, required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Easy tables for vim.
Plugin 'dhruvasagar/vim-table-mode'

" Note taking plugin
Plugin 'xolox/vim-notes'

" Dependency for vim-notes
Plugin 'xolox/vim-misc'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set tabstop=4
set number
set hidden
set autoindent
set copyindent
set showmatch
set smartcase
set incsearch
set hlsearch
set shiftwidth=4
set title
set pastetoggle=<F2>
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
:color desert
nmap /tm :TableModeToggle
nmap /sc :setlocal spell spelllang=en_gb
:let g:notes_directories = ['~/Documents/Notes', '~/GoogleNotes']
:let g:notes_suffix = '.txt'
