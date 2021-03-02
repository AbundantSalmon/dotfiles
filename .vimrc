set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'ervandew/supertab'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'easymotion/vim-easymotion'
Plugin 'luochen1990/rainbow'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Sets syntax highlighting and line numbers
syntax on
set number

"Allows vim-airline to be active when vim begins 
set laststatus=2

"Quick way to get to the terminal
nmap te :w <CR> :!bash <CR>

"Recommended Python settings
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on

"Sets the default splits orientations to be more natural
set splitbelow
set splitright

"Toggles relative line numbers and absolute line numbers
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set nonumber
        set relativenumber
    endif
endfunc

"Toggle line numbers with Ctrl+n
nnoremap <C-n> :call NumberToggle()<cr>

"Exit editing mode with jj 
:imap jj <Esc>

"Prevent use of arrow keys when insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"Vim in 256 colours
syntax enable
set background=dark
colorscheme solarized

"vim-arline character
let g:airline_powerline_fonts = 1

"Change leader
let mapleader=","

"Shortcut for NERDTree
nmap <leader>n :NERDTree<CR>

"Highlight search matches, ignorecase and highlight whilst typing
set hlsearch
set ignorecase
set incsearch

"Half page movement keys
nnoremap <C-j> <C-d> 
nnoremap <C-k> <C-u> 

"Move between tabs
nnoremap <C-h> gT
nnoremap <C-l> gt

"Disable vim's default mode indicator
set noshowmode

"Shift+Enter or Alt+k inserts blank line above cursor in normal mode
nnoremap <S-Enter> O<Esc>j
nnoremap ˚ O<Esc>j

"Enter or Alt+j inserts blank line below cursor in normal mode
nnoremap <CR> o<Esc>k
nnoremap ∆ o<Esc>k

set scrolloff=3 "Keeps cursor not at the bottom or top of screen when scrolling

