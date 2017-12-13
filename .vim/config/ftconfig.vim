"*****************************************************************************
" Vim File Type Specific Config:
"
" Path: ~/.vim/config/ftconfig.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-13 14:54
"
" Notes:
" 1. Put all ftplugin settings here in one place
" *****************************************************************************

" Textbased:
autocmd FileType markdown,tex,latex,txt,text setlocal spell spelllang=en_us textwidth=80 complete+=kspell

" JavaScript:
autocmd FileType javascript set formatprg=prettier\ --stdin

" Ruby:
autocmd FileType ruby setlocal tabstop=2           " tab spacing
autocmd FileType ruby setlocal softtabstop=2       " number of spaces in tab when editing
autocmd FileType ruby setlocal shiftwidth=2        " indent/outdent by 2 columns
