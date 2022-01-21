" General Settings
set nocompatible
syntax on
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu                    " Enchanced autocomplete for command-line
set showcmd                     " Show normal mode commands in last line as they are typed
set showmatch
set number
set cursorline
set nowrap
set tabstop=4                   " Number of spaces that a <Tab> already in the file counts as
set softtabstop=4               " Number of spaces that a <Tab> inserted into the file counts as
set expandtab                   " Tabs are converted to spaces
set shiftwidth=4                " Number of spaces to use for each step of (auto)indent
set laststatus=2                " Display filename on statusline
set statusline+=%F              " Adds full path to statusline
set statusline+=\ col:\ %c      " Adds column position to statusline
filetype plugin on

set backup                      " keep a backup file (restore to previous version)
set undofile                    " keep an undo file (undo changes after closing)
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

" Create .vim/tmp under home directory if it doesn't exist
if !isdirectory(expand(&undodir))
    call mkdir($HOME . "/.vim/tmp", "p", 0755)
endif

" Create .vim/colors under home directory if it doesn't exist
if !isdirectory("~/.vim/colors/")
    call mkdir($HOME . "/.vim/colors", "p", 0755)
endif
" curl -o ~/.vim/colors/solarized.vim https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" curl -o ~/.vim/colors/solarized.sh https://raw.githubusercontent.com/lifepillar/vim-solarized8/master/scripts/solarized8.sh
set background=dark
colorscheme solarized


" Key mappings
nnoremap <leader><space> :nohlsearch<CR>
nnoremap gl g$

" How to install vimwiki:
"   git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
"
"   # to generate documentation i.e. ':h vimwiki'
"   vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit
