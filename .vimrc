"
" Basic configurations
"
set nocompatible " make vim useful
syntax on " syntax highlighting
set shortmess+=IF " no start up messages
set noerrorbells visualbell t_vb= " no error bell noises
set autochdir " automatically set current directory to directory of last opened file
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set history=8192 " more history
set showmatch " show matching braces when text indicator is over them
set noshowcmd " disable flashing commands
set noshowmode " hide mode
set clipboard=unnamed " use OS clipboard
set wildmenu " better command-line completion
set esckeys " allow cursor keys in insert mode
set ttyfast " optimize for fast terminal connections
set laststatus=2 " always show status line
set hidden " allow hidden buffers
set number " show line numbers
set relativenumber " show relative line numbers
set title " show filename
set backspace=indent,eol,start " intuitive backspace
set term=screen-256color " fixes color issues
set modeline
set modelines=4
set exrc " per-directory .vimrc
set secure " safe .vimrc

" centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif
set backupskip=/tmp/*,/private/tmp/*

"
" Searching and navigation
"
set scrolloff=5 " start scrolling 5 lines off border
set nostartofline " don't move cursor to start of line when moving
set mouse=a " enable mouse scrolling

set gdefault " add the g flag to search/replace by default
set ignorecase
set smartcase
set incsearch " searching as you type
set hlsearch " highlight searches

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"
" Key binding
"

let mapleader = ',' " map leader key

nmap Q <Nop> " unbind Ex mode from Normal
" unbind arrow keys
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>
nnoremap <Up>    <Nop>
nnoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"
" Plugins (I use VimPlug)
"
call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' } " dracula theme
Plug 'vim-airline/vim-airline' " powerline
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'

call plug#end()
