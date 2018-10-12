" vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
" https://github.com/lervag/vimtex
Plug 'lervag/vimtex'
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
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" 80-column rule, select the line `v`, and `gq`
set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Enable syntax highlighting
syntax on
filetype plugin indent on

" LaTeX
let g:vimtex_view_method = 'skim'
