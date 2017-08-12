
"*****************************************************************************
" Switched to Neovim 2017-08-07.
" nvim: ~/.config/nvim/init.vim
"*****************************************************************************

"*****************************************************************************
" vim-plug:
" https://github.com/junegunn/vim-plug
"*****************************************************************************
" Plugins will be downloaded under the specified directory:
call plug#begin('~/.vim/plugged')

" Navigate files in a sidebar:
Plug 'scrooloose/nerdtree'

" Add NERDTree Tabs plugin here:
Plug 'jistr/vim-nerdtree-tabs'

" Prevent ENTER in NERDTree open directory in tab: 
Plug 'baumanno/vim-nerdtree-direnter'

" Fancy statusline:
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" XTerm colour table:
Plug 'guns/xterm-color-table.vim'

" NERDTree-git-plugin:
Plug 'xuyuanp/nerdtree-git-plugin'

" Fugitive.vim Git wrapper:
Plug 'tpope/vim-fugitive'

" Latex lervag/vimtex:
Plug 'lervag/vimtex'

"vim-ruby/vim-ruby:
Plug 'vim-ruby/vim-ruby'

" Auto closer:
Plug 'jiangmiao/auto-pairs'

" Vim-snipmate
Plug 'garbas/vim-snipmate'

" Prequriesite for snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Surround:
Plug 'tpope/vim-surround'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Supertab:
Plug 'ervandew/supertab'

" Indent line:
Plug 'nathanaelkane/vim-indent-guides'

" Comment tool: CTRL + __
Plug 'vim-scripts/tComment'

" tpope/vim-endwise:
Plug 'tpope/vim-endwise'

" Dash for vim:
Plug 'rizzatti/dash.vim'

" Solarized for Neovim
Plug 'frankier/neovim-colors-solarized-truecolor-only'

" Monokai
Plug 'crusoexia/vim-monokai'

" Molokai
Plug 'tomasr/molokai'

" Base16
Plug 'chriskempson/base16-vim'


"*****************************************************************************
" YCM:
"Plug 'Valloric/YouCompleteMe'

" Track the engine.
"Plug 'SirVer/ultisnips'

" Colorschemes packs:
" NOT USED - Color issue for vim
"Plug 'flazz/vim-colorschemes'

" Solarized
"Plug 'altercation/vim-colors-solarized'

" List ends here. Plugins become visible to Vim after this call:
call plug#end()


"*****************************************************************************
" Colorscheme Vim Config:
"*****************************************************************************
syntax enable            " enable syntax processing
set background=dark
"set background=light
colorscheme solarized 
call togglebg#map("<F5>")


"*****************************************************************************
" General Vim Config:
"*****************************************************************************

set guifontwide=STSong:h14      " gvim Chinesefont
set hidden              " speed up
set history=100         " speed up

set number              " line numbers
set cursorline          " highlight the current line
set scrolloff=8
"set nowrap              " don't wrap text
set showmatch           " highlight matching [{()}]

" Search:
set incsearch           " like morden search
set hlsearch            " highlight found words

" Indentation:
filetype indent on      " file specific indent on
set autoindent          " auto-indent
set smartindent         
set tabstop=4           " tab spacing
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " indent/outdent by 4 columns
set shiftround          " always indent/outdent to the nearest tabstop
set smarttab            " use tabs at the start of a line, spaces elsewhere
set expandtab           " use spaces instead of tabs

" Text wrap:
set textwidth=80
set wrap linebreak nolist

" ruler:
set colorcolumn=80

" line space:
set linespace=2

" Folding:
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" space open/closes folds
nnoremap <space> za

" Set line number colour:
"highlight LineNr ctermbg=16
"highlight LineNr ctermfg=grey 
"highlight LineNr ctermfg=238 
"highlight clear LineNr ctermbg
"highlight clear SignColumn

" Set leader key, default is \:
" let mapleader=","

" Reload Vim Config Without Having To Restart Editor:
map <leader>s :source ~/.vimrc<ENTER>

" map <ESC> to 'jk':
inoremap jk <ESC>

" toggle gundo:
nnoremap <leader>u :GundoToggle<CR>

" tab key to switch windows (and current file path)
" set autochdir
" map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
"map <Tab> <C-W>W

" map gT/gt to H/L for switch tabs:(conflict move window)
"nnoremap H gT
"nnoremap L gt

" Expending menu:
set wildmenu
set wildmode=longest:list,full

" Increase scroll speed:
set ttyfast

" buffer screen updates instead of always updating:
set lazyredraw

" Using j/k for softlines(wrap) as well:
nnoremap j gj
nnoremap k gk

" Map exit Paste mode:
:set nopaste
set pastetoggle=<f2>
"inoremap <silent><f2><C-\><C-n>:set nopaste<CR>
"inoremap <silent><f2>:set nopaste<CR>

"*****************************************************************************
" vim-NERDTree config:
"*****************************************************************************
" open NERDTree when open vim by default:
au VimEnter *  NERDTree

" open new tab with NERDTree:
"au BufWinEnter * NERDTreeMirror

" move cursor to edit area by default:
au VimEnter * wincmd p

" NERDTree show hidden files by default:
let NERDTreeShowHidden=1

" file opened from NERDTree in new tab by default:
let NERDTreeMapOpenInTab='<ENTER>'

" close vim if the only window left open is a NERDTree:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" automatically close NerdTree when open a file:
" let NERDTreeQuitOnOpen = 1

" Do not display useless files in NERDTree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Reveal current file in NERDTree with <Leader>r:
map <Leader>r <esc>:NERDTreeFind<cr>

" Start NERDTree Tabs automatically:
let g:nerdtree_tabs_open_on_console_startup = 1


"*****************************************************************************
" airline-vim config:
"*****************************************************************************
" enables the statusline by default:
set laststatus=2

" Automatically displays all buffers when there's only one tab open:
let g:airline#extensions#tabline#enabled = 1 

" Tabline number as tab number (0: # of split; 2: both):
let g:airline#extensions#tabline#tab_nr_type = 1 

" using powerline fonts:
let g:airline_powerline_fonts = 1

" theme:
"let g:airline_theme='dark'


"*****************************************************************************
" gvim(MacVim) specific Config:
"*****************************************************************************
if has('gui_running')
    "set encoding=utf-8
    "set fileencoding=chinese
    "set fileencodings=ucs-bom,utf-8,chinese,gb18030,gbk,gb2312,cp936,prc,taiwan,latin-1
    set lines=43 columns=146        " default gvim window size
    set guifont=Hack:h14            " gvim font
    set guifontwide=STSong:h14      " gvim Chinesefont
    set guioptions-=L               " hide left scrollbar
    set guioptions-=r               " hide right scrollbar
    set background=light             " background for colorscheme
    colorscheme solarized
    let g:airline_theme='solarized'
endif

au InsertLeave * set nopaste
"*****************************************************************************
" Neovim specific Config:
"*****************************************************************************
if has('nvim')
    set termguicolors
endif


"*****************************************************************************
" Latex (latexmk/vimtex) Config: in ~/.latexmk file
"*****************************************************************************
" Diasble callback function to avoid terminal servername warning:
let g:vimtex_compiler_latexmk = {'callback' : 0}

" Other tex setting for faster editing performance:
"let g:tex_flavor = "latex"
let g:tex_fast = "cmMprs"
let g:tex_conceal = ""
let g:tex_fold_enabled = 0
let g:tex_comment_nospell = 1



