set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=50 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd	" display incomplete commands
syntax on " Turn on syntax highlighting

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap ii <Esc>
vnoremap ii <Esc> 
inoremap <expr> <Tab> search('\%#[]>)}"]', 'n') ? '<Right>' : '<Tab>' "Tab to exit quotes/brackets

" Display Line Numbers:
set number

" Change Backup Location:
set backup " keep a backup file (restore to previous version)
set undofile " keep an undo file (undo changes after closing)
set swapfile " keep a swap file to record changes in case of a crash"
" You must create the location below for this to work
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

" Tab Setup:
set tabstop=4 " number of visual spaces per Tab
set softtabstop=4 " number of spaces  in tab when editting
set expandtab " tabs are spaces
set shiftwidth=4

" Search Settings:
nnoremap <leader><space> :nohlsearch<CR> " leader + space removes highlighted searches
set incsearch " do incremental searching
set hlsearch " Highlight all matched patterns when searching

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'

call plug#end()

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()

" Use <CR> to select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
