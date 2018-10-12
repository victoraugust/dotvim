" vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
" https://github.com/lervag/vimtex
Plug 'lervag/vimtex'
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" https://github.com/edkolev/tmuxline.vim
Plug 'edkolev/tmuxline.vim'
call plug#end()

" rebind <leader> key
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" line numbers
set relativenumber

" 80-column rule, select the line `v`, and `gq`
set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Enable syntax highlighting
syntax on
filetype plugin indent on

" LaTeX
let g:vimtex_view_method = 'skim'

" Status Line
" git clone git@github.com:powerline/fonts.git && cd fonts && ./install.sh
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='light'
let g:airline#extensions#tabline#enabled=1 "allow showing tab
let g:airline#extensions#tabline#buffer_min_count=2 "show tab when more than 1
let g:airline#extensions#tmuxline#enabled=0 "make sure tmuxline won't tamper
let g:tmuxline_theme = 'airline'

