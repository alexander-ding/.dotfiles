"
" Basic configurations
"

set nocompatible " make vim useful
syntax on " syntax highlighting
set shortmess+=IF " no start up messages
set noerrorbells visualbell t_vb= " no error bell noises
set autochdir " automatically set current directory to directory of last opened file
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set tabstop=4 " how many spaces a tab takes up
set shiftwidth=4 " pressing tab gives 4 spaces
set expandtab " use spaces when pressing tab
set history=8192 " more history
set showmatch " show matching braces when text indicator is over them
set noshowcmd " disable flashing commands
set noshowmode " hide mode
set wildmenu " better command-line completion
set esckeys " allow cursor keys in insert mode
set ttyfast " optimize for fast terminal connections
set laststatus=2 " always show status line
set hidden " allow hidden buffers
set number " show line numbers
set relativenumber " show relative line numbers
set title " show filename
set backspace=indent,eol,start " intuitive backspace
set term=xterm-256color " fixes color issues
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
" File-type based configurations
"

filetype on " turn on file type detection
filetype plugin on
filetype indent on " file type based indentation

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are
" tabs
autocmd FileType make set noexpandtab 

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

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"
" Plugins (I use VimPlug)
"

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
call plug#begin()

" Plugins and configurations
Plug 'dracula/vim', { 'as': 'dracula' } " dracula theme
Plug 'vim-airline/vim-airline' " powerline
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#obsession#enabled = 1

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-obsession'

call plug#end()
