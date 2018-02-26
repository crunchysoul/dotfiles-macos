"*****************************************************************************
" Vim Config:
"
" Path: ~/.vimrc
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2018-02-22 13:39
"
" Structure: 
" ~
" ├── .config/nvim/init.vim        : main nvim rc file, inherit from .vimrc
" ├── .vimrc                       : main vimrc file, aggregator
" ├── .vim                         : vim folder for user setting
" │     ├── autoload               : autoload folder
" │     │   └── plug.vim           : vim-plug, plugins manager
" │     ├── config                 : personal vim config folder
" │     │   ├── config.vim         : generic vim setting
" │     │   ├── ftconfig.vim       : file specific setting
" │     │   ├── keymap.vim         : personal key mappings
" │     │   ├── plugins.vim        : list of all plugins for vim-plug
" │     │   └── plugins_config     : plugin specific config folder
" │     │       ├── ale.vim        : lint
" │     │       ├── goyo.vim       : distraction free
" │     │       ├── indentline.vim : indentation line
" │     │       ├── jsx.vim        : jsx
" │     │       ├── latex.vim      : latex
" │     │       ├── markdown.vim   : markdown
" │     │       ├── nerdtree.vim   : NERDTree
" │     │       ├── airline.vim    : statusbar
" │     │       ├── ultisnip.vim   : snippts
" │     │       ├── vrc.vim        : Vim REST Client
" │     │       └── ycm.vim        : auto completion
" │     ├── mysnips                : personal UltiSnip folder
" │     ├── myundos                : personal undo file folder
" │     ├── plugged                : plugins folder
" │     ├── spell                  : spell check file folder
" │     ├── view                   : saved view for vim(not nvim) folder
" │     └── .netrwhist             : vim explorer records
"
" Notes:
" 1. switched to Neovim at 2017-08-07.
" 2. nvim config path: ~/.config/nvim/init.vim
" 3. split one .vimrc to seperate .vim files at 2017-12-12 17:22
" 4. split .vim files path: ~/.vim/config/
" 5. the source order is IMPORTANT!
" 6. plugins.vim above all IMPORTANT!
"*****************************************************************************

" Vim Config - General:
"*****************************************************************************
source ~/.vim/config/plugins.vim
source ~/.vim/config/config.vim
source ~/.vim/config/ftconfig.vim
source ~/.vim/config/keymap.vim

" Vim Config - Plugins Specific:
"*****************************************************************************
source ~/.vim/config/plugins_config/airline.vim
source ~/.vim/config/plugins_config/ale.vim
source ~/.vim/config/plugins_config/devicons.vim
source ~/.vim/config/plugins_config/elm.vim
source ~/.vim/config/plugins_config/emmet.vim
source ~/.vim/config/plugins_config/goyo.vim
source ~/.vim/config/plugins_config/indentline.vim
source ~/.vim/config/plugins_config/jsx.vim
source ~/.vim/config/plugins_config/latex.vim
source ~/.vim/config/plugins_config/markdown.vim
source ~/.vim/config/plugins_config/nerdtree.vim
source ~/.vim/config/plugins_config/tern.vim
source ~/.vim/config/plugins_config/ultisnips.vim
source ~/.vim/config/plugins_config/vrc.vim
source ~/.vim/config/plugins_config/ycm.vim
" foo
