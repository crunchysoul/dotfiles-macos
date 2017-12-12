"*****************************************************************************
" Vim Plugin List:
"
" Path: ~/.vim/splitvimrc/plugins.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-12 16:52
"
" Notes:
" 1. Use "junegunn/vim-plug" plugins manager
"*****************************************************************************

" Plugins - Deploying:
"*****************************************************************************
" plugins will be downloaded under the specified directory:
call plug#begin('~/.vim/plugged')

Plug 'alvan/vim-closetag'
Plug 'baumanno/vim-nerdtree-direnter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'guns/xterm-color-table.vim'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'vim-ruby/vim-ruby'
Plug 'jiangmiao/auto-pairs'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-endwise'
Plug 'rizzatti/dash.vim'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'crusoexia/vim-monokai'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-rails'
Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'shime/vim-livedown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'kchmck/vim-coffee-script'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ternjs/tern_for_vim'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'qpkorr/vim-bufkill'
Plug 'junegunn/vim-emoji'
Plug 'moll/vim-node'
Plug 'trevordmiller/nova-vim'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'diepm/vim-rest-console'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'plasticboy/vim-markdown'
Plug 'neovimhaskell/haskell-vim'

" list ends here. Plugins become visible to Vim after this call:
call plug#end()

" Plugins - Retired:
"*****************************************************************************
" Plug 'tpope/vim-markdown'
" Plug 'tpope/vim-liquid'
" Plug 'scrooloose/syntastic'
