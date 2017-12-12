"*****************************************************************************
" Vim Config:
"
" Path: ~/.vimrc
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-12 17:20
"
" Notes:
" 1. switched to Neovim at 2017-08-07.
" 2. nvim config path: ~/.config/nvim/init.vim
" 3. split one .vimrc to seperate .vim files at 2017-12-12 17:22
" 4. split .vim files path: ~/.vim/config/
" 5. the source order is IMPORTANT!
"*****************************************************************************

" Vim Config - General:
"*****************************************************************************
source ~/.vim/config/nvim.vim
source ~/.vim/config/general.vim
source ~/.vim/config/plugins.vim
source ~/.vim/config/gvim.vim
source ~/.vim/config/keymap.vim
source ~/.vim/config/color.vim

" Vim Config - Plugins Specific:
"*****************************************************************************
source ~/.vim/config/plugins_airline.vim
source ~/.vim/config/plugins_ale.vim
source ~/.vim/config/plugins_goyo.vim
source ~/.vim/config/plugins_indentline.vim
source ~/.vim/config/plugins_jsx.vim
source ~/.vim/config/plugins_latex.vim
source ~/.vim/config/plugins_markdown.vim
source ~/.vim/config/plugins_nerdtree.vim
source ~/.vim/config/plugins_ultisnips.vim
source ~/.vim/config/plugins_vrc.vim
source ~/.vim/config/plugins_ycm.vim
