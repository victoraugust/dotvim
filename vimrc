" setup pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on
