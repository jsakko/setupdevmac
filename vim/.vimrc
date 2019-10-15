filetype on
syntax on

set number
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set showmatch

" Search and escape search with ESC
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Leader key
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

" Switch between files with space space
nnoremap <Leader><Leader> :e#<CR>

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" https://github.com/chriskempson/tomorrow-theme
colorscheme Tomorrow-Night-Eighties

" Reference:
" https://marcgg.com/blog/2016/03/01/vimrc-example/
