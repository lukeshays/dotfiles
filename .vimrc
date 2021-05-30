" General Settings
syntax on
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set number
set nowrap

set backup " keep a backup file (restore to previous version)
set undofile " keep an undo file (undo changes after closing)
set swapfile " keep a swap file to record changes in case of a crash"
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

if !isdirectory(expand(&undodir))
    call mkdir($HOME . "/.vim/tmp", "p", 0755)
endif

" Tab Settings
set tabstop=4 " number of visual spaces per Tab
set softtabstop=4 " number of spaces  in tab when editting
set expandtab " tabs are spaces
set shiftwidth=4

" Search Settings
nnoremap <leader><space> :nohlsearch<CR>
set incsearch
set hlsearch

" Download vim-plug with the below command
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Use ':PlugInstall' to install plugins below
call plug#begin('~/.vim/plugged')

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'

call plug#end()

inoremap <expr> <Tab> search('\%#[]>)}"]', 'n') ? '<Right>' : '<Tab>' "Tab to exit quotes/brackets
