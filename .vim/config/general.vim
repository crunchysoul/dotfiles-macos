"*****************************************************************************
" Vim General Config:
"
" Path: ~/.vim/splitvimrc/general.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-12 17:41
"
" Notes:
" *****************************************************************************

syntax enable                   " enable syntax processing
set vb t_vb=                    " Disable sound and bell:
set guifontwide=STSong:h14      " gvim Chinesefont
set hidden                      " speed up
set history=100                 " speed up
set number                      " line numbers
set cursorline                  " highlight the current line
set scrolloff=8
set showmatch                   " highlight matching [{()}]
set linespace=3

" search:
set incsearch                   " like morden search
set hlsearch                    " highlight found words

" indentation:
filetype plugin indent on
set tabstop=2                   " tab spacing
set softtabstop=2               " number of spaces in tab when editing
set shiftwidth=2                " indent/outdent by 4 columns
set shiftround                  " always indent/outdent to the nearest tabstop
set autoindent                  " auto-indent
set smarttab                    " use tabs at the start of a line, spaces elsewhere
set expandtab                   " use spaces instead of tabs

" text wrap:
set wrap
set linebreak
set nolist                      " list disables linebreak
set textwidth=80
set formatoptions-=t
"set nowrap                     " don't wrap text

" folding:
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max
set foldmethod=manual           " fold based on indent level

" Auto load view and folder
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent! loadview 

" Not saves vim options
set viewoptions-=options

" Expending menu:
set wildmenu
set wildmode=longest:list,full

" Increase scroll speed:
set ttyfast

" buffer screen updates instead of always updating:
set lazyredraw

" Set natural split
set splitbelow
set splitright

" Persistent undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  "directory where the undo files will be stored
  set undodir=$HOME/.vim/myundos
endif 

" fix paste issue:
set nopaste
au InsertLeave * set nopaste

" fix losing syntax light issue:
augroup EnableSyntaxHighlighting
  autocmd! BufWinEnter * nested if exists('syntax_on') && ! exists('b:current_syntax') && ! empty(&l:filetype) | syntax enable | endif
  autocmd! BufRead * if exists('syntax_on') && exists('b:current_syntax') && ! empty(&l:filetype) && index(split(&eventignore, ','), 'Syntax') != -1 | unlet! b:current_syntax | endif
augroup END
