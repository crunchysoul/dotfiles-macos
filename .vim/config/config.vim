"*******************************************************************************
" Vim General Config:
"
" Path: ~/.vim/config/config.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-13 14:34
"
" Notes:
"
"*******************************************************************************

"*******************************************************************************
"" Vim General Config - Setting:
" Last Update: 2017-12-13 14:43
"*******************************************************************************

" genereal:
syntax enable                   " enable syntax processing
set vb t_vb=                    " Disable sound and bell:
set hidden                      " speed up
set history=200                 " speed up
set number                      " line numbers
set mouse=a                     " enable mouse scroll

" set the invisible characters:
" set list                            " display invisible characters
" set listchars=tab:▸\ ,eol:¬,trail:  " set invisible characters

set cursorline                  " highlight the current line
set scrolloff=8
set showmatch                   " highlight matching [{()}]
set nocursorline                " Disable cursor line
set nocursorcolumn              " Disable cursor column
set scrolljump=8                " scroll 8 lines at a time at bottom/top

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

" folding:
set foldenable                  " enable folding
set foldmethod=manual           " fold based on indent level
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max

" Auto load leave save regain reload
" au FocusGained,BufEnter * :silent! !
" au FocusLost,WinLeave * :silent! w

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

" Customerized comment tag
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|DOING\|TESTING\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
endif

" Disable safe write in your editor to assure hot reloading works properly
" https://github.com/coryhouse/react-slingshot#initial-machine-setup
set backupcopy=yes

"*******************************************************************************
"" Vim General Config - Issues Remedies:
" Last Update: 2017-12-13 14:36
"*******************************************************************************

" fix paste issue:
set nopaste
au InsertLeave * set nopaste

" fix losing syntax light issue:
augroup EnableSyntaxHighlighting
  autocmd! BufWinEnter * nested if exists('syntax_on') && ! exists('b:current_syntax') && ! empty(&l:filetype) | syntax enable | endif
  autocmd! BufRead * if exists('syntax_on') && exists('b:current_syntax') && ! empty(&l:filetype) && index(split(&eventignore, ','), 'Syntax') != -1 | unlet! b:current_syntax | endif
augroup END

"*******************************************************************************
"" Vim General Config - MacVim:
" Last Update: 2017-12-13 14:36
" Notes:
" 1. gvim(MacVim) specific config
"*******************************************************************************

if has('gui_macvim')
  set lines=80 columns=400        " default gvim window size
  set guifont=Monaco\ for\ Crunchy:h10            " gvim font
  " set guifont=Hack\ Nerd\ Font:h12            " gvim font
  " set guifontwide=STSong:h10      " gvim Chinesefont
  set guioptions-=L               " hide left scrollbar
  set guioptions-=r               " hide right scrollbar
  set linespace=0
  let g:WebDevIconsUnicodeGlyphDoubleWidth=0
  " let g:WebDevIconsNerdTreeAfterGlyphPadding=' '
endif

"*******************************************************************************
"" Vim General Config - NeoVim: {{{
" Last Update: 2017-12-12 17:03
" Notes:
" 1. NeoVim specific config
"*******************************************************************************

if has('nvim')
  set termguicolors
endif
" }}}
"*******************************************************************************
"" Vim General Config - Color Scheme:
" Last Update: 2017-12-12 16:52
" Notes:
" 1. use base16 colorschemes first, works better with nvim
"*******************************************************************************

" colorscheme base16-oceanicnext
" set background=dark
" set background=light
" call togglebg#map("<F5>")

colorscheme base16-solarized-dark
" colorscheme base16-solarized-light
hi Search guibg=Blue guifg=yellow
