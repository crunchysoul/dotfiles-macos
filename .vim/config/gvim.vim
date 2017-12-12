"*****************************************************************************
" Gvim Config:
"
" Path: ~/.vim/splitvimrc/gvim.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-12 17:03
"
" Notes:
" 1. gvim(MacVim) specific config
"*****************************************************************************

if has('gui_running')
  set lines=43 columns=146        " default gvim window size
  set guifont=Hack:h14            " gvim font
  set guifontwide=STSong:h14      " gvim Chinesefont
  set guioptions-=L               " hide left scrollbar
  set guioptions-=r               " hide right scrollbar
  set background=light            " background for colorscheme
  colorscheme solarized
  let g:airline_theme='solarized'
endif
