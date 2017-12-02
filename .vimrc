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

" Prequriesite for snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Surround:
Plug 'tpope/vim-surround'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Vim-snipmate
"Plug 'garbas/vim-snipmate'

" Ultisnips 
Plug 'SirVer/ultisnips'

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

" Emmet-vim for html:
Plug 'mattn/emmet-vim'

" Auto close tag for html:
Plug 'alvan/vim-closetag'

"View tag of the current file:
Plug 'majutsushi/tagbar'

" Better css syntax
Plug 'hail2u/vim-css3-syntax'

" Vim-javascript:
Plug 'pangloss/vim-javascript'

" React JSX syntax:
Plug 'mxw/vim-jsx'

" vim-css-color:
Plug 'ap/vim-css-color'

" Vim-rails:
Plug 'tpope/vim-rails'

" Syntastic is a syntax checking plugin:
" Plug 'scrooloose/syntastic'

" Elixir support:
Plug 'elixir-lang/vim-elixir'

" Distraction free writing:
Plug 'junegunn/goyo.vim'

" Limelight for Goyo:
Plug 'junegunn/limelight.vim'

" Markdown preview:
Plug 'shime/vim-livedown'

" Fuzzy search:
Plug 'ctrlpvim/ctrlp.vim'

" Another indent guide:
Plug 'Yggdroot/indentLine'

" coffeescript syntax:
Plug 'kchmck/vim-coffee-script'

" hybird line number:
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" js-tern
Plug 'ternjs/tern_for_vim'

" indent jump
Plug 'jeetsukumaran/vim-indentwise'

" es6 snippets:
"Plug 'isRuslan/vim-es6'

" better buffer close
Plug 'qpkorr/vim-bufkill'

" Emoji
Plug 'junegunn/vim-emoji'

" Node vim
Plug 'moll/vim-node'

" nove colorscheme
Plug 'trevordmiller/nova-vim'

" YCM:
Plug 'Valloric/YouCompleteMe'

" ale
Plug 'w0rp/ale'

" YACS(yet another color scheme)
Plug 'rafi/awesome-vim-colorschemes'

"*****************************************************************************
" disabled plugins:
"*****************************************************************************

" Colorschemes packs:
" NOT USED - Color issue for vim
" Plug 'flazz/vim-colorschemes'

" List ends here. Plugins become visible to Vim after this call:
call plug#end()

"*****************************************************************************
" Colorscheme Vim Config:
"*****************************************************************************
syntax enable            " enable syntax processing
" set background=dark
" set background=light
" colorscheme solarized 
" call togglebg#map("<F5>")

"*****************************************************************************

" colorscheme base16-flat 
" colorscheme base16-atelier-cave-light
" colorscheme base16-solarized-light 
colorscheme base16-oceanicnext

"*****************************************************************************
" General Vim Config:
"*****************************************************************************
" swap $ and _g: end of line doesn't include the line break
nmap $ g_
vmap $ g_

set vb t_vb=            " Disable sound and bell:
set guifontwide=STSong:h14      " gvim Chinesefont
set hidden              " speed up
set history=100         " speed up
set number              " line numbers
set cursorline          " highlight the current line
set scrolloff=8
set showmatch           " highlight matching [{()}]
set linespace=3

" search:
set incsearch           " like morden search
set hlsearch            " highlight found words

" indentation:
filetype plugin indent on
set tabstop=2           " tab spacing
set softtabstop=2       " number of spaces in tab when editing
set shiftwidth=2        " indent/outdent by 4 columns
set shiftround          " always indent/outdent to the nearest tabstop
set autoindent          " auto-indent
set smarttab            " use tabs at the start of a line, spaces elsewhere
set expandtab           " use spaces instead of tabs

" text wrap:
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=80
set formatoptions-=t
set colorcolumn=80        " ruler:
"set nowrap              " don't wrap text

" folding:
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" set foldmethod=indent   " fold based on indent level
set foldmethod=manual   " fold based on indent level
" space open/closes folds
nnoremap <space> za
" Auto load view and folder
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent! loadview 

" Reload Vim Config Without Having To Restart Editor:
" Updated, before when source rc, indentation setting are lost,
" and possibly other settings are lost as well, now add update and edit
map <leader>s :source ~/.vimrc <bar> :up <bar> :e<ENTER>

" map <ESC> to 'jk':
inoremap jk <ESC>

" toggle gundo:
nnoremap <leader>u :GundoToggle<CR>

"enable :W to :w
command! W w

" tagbar:
nmap <F8> :TagbarToggle<CR>

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

" Persistent undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  "directory where the undo files will be stored
  set undodir=$HOME/.vim/mydir/undodir
  endif 

" Indent line:
let g:indentLine_enabled = 0    " Disable by default

" Enable JSX to JS:
let g:jsx_ext_required = 0

" Set natural split
set splitbelow
set splitright

" map switch windows:
" map <Leader>` <C-W>W
map <Leader>j <C-W>W
map <Leader>k <C-W>w

" map switch tabs:
:nnoremap <Leader>2 :bnext<CR>
:nnoremap <Leader>1 :bprevious<CR>

" map switch tabs:
map <Leader>3 gT
map <Leader>4 gt
map <Leader>5 <C-^>

" map write:
map <Leader>w :w<cr>
" map write and quite:
map <Leader>q :x<cr>

" map indentation adjustment:
map <Leader>, gg=G<C-o><C-o>

" map buffer list
map <Leader>ll :ls<CR>:b<Space>
" map delete buffer from list
map <Leader>ld :ls<CR>:bd
" map close buffer:
map <Leader>z :BD <cr>
" map close buffer and close window:
map <Leader>bd :bd <cr>
" map <Leader>z :w <bar> :BD <cr>
" map delete buffer from list
" map <Leader>z :w <bar> :bp <bar> bd #<CR>
" map <Leader>q :w <bar> :bp <bar> sp <bar> bn <bar> bd <CR>

" map leaer x with lead `:
" map <Leader>xx <Leader>x <bar> <Leader>`

" set leader key, default is \:
" let mapleader="<Space>"
map ; <Leader>

" Set hybird line number:
" :set number relativenumber
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END
" hybrid line number now are setup using vim-plug(doing the exact same thing)
:nnoremap <silent> <C-n> :set relativenumber!<cr>

" map IndentWise
map [0 <Plug>(IndentWisePreviousGreaterIndent)
map ]0 <Plug>(IndentWiseNextGreaterIndent)

" map :noh
map ;nh :let @/ = "" <CR>

" map for Emoji replacement and clean the search pattern
:nnoremap <Leader>em :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g <bar> :let @/ = "" <CR>

" map <Leader>gf for React Components File Jump
:map <Leader>gf yiw?./components/<C-r>0<CR>;nhgf<CR>

" tab key to switch windows (and current file path)
" set autochdir
" map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
"map <Tab> <C-W>W

" map gT/gt to H/L for switch tabs:(conflict move window)
"nnoremap H gT
"nnoremap L gt

" set line number colour:
" highlight clear LineNr ctermbg

" set leader key, default is \:
" let mapleader=","

"*****************************************************************************
" ultisnips/supertab config:
"*****************************************************************************
" " Supertab keymap:
" let g:SuperTabMappingForward = '<c-j>'
" let g:SuperTabMappingBackward = '<s-c-j>'
"
" UltiSnip keymap:
" set runtimepath+=~/.vim/mydir/ultisnips
" let g:UltiSnipsDontReverseSearchPath="1"
" let g:UltiSnipsSnippetsDir="~/.vim/mydir/ultisnips"
" let g:UltiSnipsSnippetDirectories=["mydir/ultisnips", "UltiSnips"]
" let g:UltiSnipsExpandTrigger="<tab>"                                            
" let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"    
" let g:UltiSnipsListSnippets="<c-k>"
" let g:UltiSnipsEditSplit="horizontal"

" BELOW IS THE SOLUTION FOR YCM:
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
set runtimepath+=~/.vim/mydir/ultisnips
let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsSnippetsDir="~/.vim/mydir/ultisnips"
let g:UltiSnipsSnippetDirectories=["mydir/ultisnips", "UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
" let g:UltiSnipsListSnippets="<c-k>"
let g:UltiSnipsEditSplit="horizontal"

" Add node to javascript
" autocmd FileType javascript UltiSnipsAddFiletypes javascript-node

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
" let NERDTreeMapOpenInTab='<ENTER>'
" let NERDTreeMapActivateNode='<Space>'
let NERDTreeMapActivateNode='<ENTER>'

" close vim if the only window left open is a NERDTree:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" automatically close NerdTree when open a file:
" let NERDTreeQuitOnOpen = 1

" Do not display useless files in NERDTree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Reveal current file in NERDTree with <Leader>r:
map <Leader>r <esc>:NERDTreeFind<cr>

" Toggle NERDTree":
map <Leader>nn :NERDTreeToggle<cr>

" Start NERDTree Tabs automatically:
let g:nerdtree_tabs_open_on_console_startup = 0

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

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
let g:airline_theme='base16'
" let g:airline_solarized_bg='light'
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'

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
    " highlight Cursor guifg=white guibg=steelblue
    " highlight iCursor guifg=white guibg=steelblue
    " set guicursor=n-v-c:block-Cursor
    " set guicursor+=i:ver100-iCursor
    " set guicursor+=n-v-c:blinkon0
    " set guicursor+=i:blinkwait10
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

"*****************************************************************************
" Syntastic Beginner Setting:
"*****************************************************************************
" let g:syntastic_mode_map = { 'mode': 'passive' }
" nnoremap <f3> :SyntasticToggleMode<CR>
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ale
" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_linters = {
\   'javascript': ['eslint'],
\ }
let g:ale_fixers = {
\   'javascript': ['prettier-eslint'],
\ }
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_prettier_eslint_executable = 'prettier-eslint'
let g:ale_javascript_prettier_eslint_use_global = 1
let g:ale_fix_on_save = 1
"*****************************************************************************
" Goyo Setting:
"*****************************************************************************
function! s:goyo_enter()
  " NERDTreeClose
  Limelight
  :set norelativenumber
endfunction

function! s:goyo_leave()
  " NERDTree
  " NERDTreeTabsOpen
  :wincmd w
  " this is equivalent to :execute \"normal \<C-W>\<C-W>\"
  Limelight!
  :set relativenumber
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Goyo trigger (distraction free)
nnoremap <Leader>ff :Goyo<CR>

"*****************************************************************************
" Markdown Preview Setting:
"*****************************************************************************
nmap <Leader>mm :LivedownToggle<CR>

" Emoji
" set completefunc=emoji#complete
