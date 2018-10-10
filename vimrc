" automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

" rebind <leader> key
let mapleader = "<space>"

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

" pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
