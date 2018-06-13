"*****************************************************************************
" Vim Plugin List:
"
" Path: ~/.vim/config/plugins.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-12 16:52
"
" Notes:
" 1. Use 'junegunn/vim-plug' plugins manager
"*****************************************************************************

" Plugins - Deploying:
"*****************************************************************************
" plugins will be downloaded under the specified directory:
call plug#begin('~/.vim/plugged')

Plug 'alvan/vim-closetag'
Plug 'baumanno/vim-nerdtree-direnter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'guns/xterm-color-table.vim'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'vim-ruby/vim-ruby'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-endwise'
Plug 'rizzatti/dash.vim'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'chriskempson/base16-vim'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-rails'
Plug 'elixir-editors/vim-elixir'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'shime/vim-livedown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'kchmck/vim-coffee-script'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'qpkorr/vim-bufkill'
Plug 'junegunn/vim-emoji'
Plug 'moll/vim-node'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug 'diepm/vim-rest-console'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'neovimhaskell/haskell-vim'
Plug 'elmcast/elm-vim'
Plug 'fatih/vim-go'
Plug 'keith/swift.vim'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-mix-format'
Plug 'digitaltoad/vim-pug'
Plug 'slashmili/alchemist.vim'
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist' " required for some navigation features
" neoplete:
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'elzr/vim-json'
Plug 'majutsushi/tagbar'

" list ends here. Plugins become visible to Vim after this call:
call plug#end()
" Plugins - Retired:
"*****************************************************************************
" Plug 'ervandew/supertab'
" Plug 'Valloric/YouCompleteMe'
" Plug 'tpope/vim-markdown'
" Plug 'tpope/vim-liquid'
" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'crusoexia/vim-monokai'
" Plug 'tomasr/molokai'
" Plug 'junegunn/vim-easy-align'
" Plug 'scrooloose/syntastic'
" Plug 'majutsushi/tagbar' , { 'on': 'TagbarToggle' }
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'itchyny/lightline.vim'
" Plug 'nathanaelkane/vim-indent-guides'
