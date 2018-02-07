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

" Elixir:
autocmd BufWritePost *.exs silent :!mix format %
autocmd BufWritePost *.exs silent :!mix format %
" autocmd FileType elixir silent :!mix format %

" Elm:
autocmd FileType elm set tabstop=4            " tab spacing
autocmd FileType elm set softtabstop=4        " number of spaces in tab when editing
autocmd FileType elm set shiftwidth=4         " indent/outdent by 2 columns
" autocmd BufWritePost *.elm ElmMake            " auto make when write

" GO:
autocmd FileType go set noexpandtab
autocmd FileType go set shiftwidth=4
autocmd FileType go set softtabstop=4
autocmd FileType go set tabstop=4

" JavaScript:
autocmd FileType javascript set formatprg=prettier\ --stdin

" Ruby:
autocmd FileType ruby set expandtab
autocmd FileType ruby set tabstop=2           " tab spacing
autocmd FileType ruby set softtabstop=2       " number of spaces in tab when editing
autocmd FileType ruby set shiftwidth=2        " indent/outdent by 2 columns

" Textbased:
autocmd FileType markdown,tex,latex,txt,text setlocal spell spelllang=en_us textwidth=80 complete+=kspell
autocmd FileType markdown,tex,latex,txt,text set tabstop=2           " tab spacing
autocmd FileType markdown,tex,latex,txt,text set softtabstop=2       " number of spaces in tab when editing
autocmd FileType markdown,tex,latex,txt,text set shiftwidth=2        " indent/outdent by 2 columns

" Wechat:
augroup filetypedetect
  au BufRead,BufNewFile *.wxml set filetype=jsx
  au BufRead,BufNewFile *.wxss set filetype=css
augroup END
