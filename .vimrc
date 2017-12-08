"*****************************************************************************
" Switched to Neovim 2017-08-07.
" nvim: ~/.config/nvim/init.vim
"*****************************************************************************
" vim-plug:
" Plugins will be downloaded under the specified directory:
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'baumanno/vim-nerdtree-direnter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'alvan/vim-closetag'
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
" Plug 'tpope/vim-markdown'
" Plug 'tpope/vim-liquid'

" Plug 'scrooloose/syntastic'

" List ends here. Plugins become visible to Vim after this call:
call plug#end()

"*****************************************************************************
" Colorscheme:
"*****************************************************************************
syntax enable                   " enable syntax processing
colorscheme base16-oceanicnext
" set background=dark
" set background=light
" call togglebg#map("<F5>")
" colorscheme solarized 
" colorscheme base16-flat 
" colorscheme base16-atelier-cave-light
" colorscheme base16-solarized-light 

"*****************************************************************************
" General:
"*****************************************************************************
" swap $ and _g: end of line doesn't include the line break
nmap $ g_
vmap $ g_

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
" set colorcolumn=80              " ruler:
"set nowrap                     " don't wrap text

" folding:
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max
" set foldmethod=indent         " fold based on indent level
set foldmethod=manual           " fold based on indent level
" space open/closes folds
nnoremap <space> za
" Auto load view and folder
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent! loadview 
" Not saves vim options
set viewoptions-=options

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
map <Leader>qq :x<cr>

" map indentation adjustment:
map <Leader>, gg=G<C-o><C-o>

" map buffer list
map <Leader>` :ls<CR>:b<Space>
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
" :map <Leader>gf yiw?./components/<C-r>0<CR>;nhgf<CR>
:map <Leader>gf yiw?./<C-r>0<CR>;nhgf<CR>

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
" " BELOW IS THE SOLUTION FOR YCM:
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
" let g:syntastic_javascript_checkers=['eslint']
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ale
" let g:ale_sign_error = '●' " Less aggressive than the default '>>'
" let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \ }
let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \ }
nmap <Leader>fx <Plug>(ale_fix)

let g:deoplete#enable_at_startup = 1
" let g:ale_javascript_eslint_executable = 'eslint'
" let g:ale_javascript_eslint_use_global = 1
" let g:ale_javascript_prettier_eslint_executable = 'prettier-eslint'
" let g:ale_javascript_prettier_eslint_use_global = 1
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

"*****************************************************************************
" emmet:
"*****************************************************************************
" let g:user_emmet_leader_key='<c-j>'
" let g:user_emmet_settings = {
"       \  'javascript.jsx' : {
"       \      'extends' : 'jsx',
"       \  },
"       \}

" Enable syntax highlighting when buffers were loaded through :bufdo, which
" disables the Syntax autocmd event to speed up processing.
augroup EnableSyntaxHighlighting
  " Filetype processing does happen, so we can detect a buffer initially
  " loaded during :bufdo through a set filetype, but missing b:current_syntax.
  " Also don't do this when the user explicitly turned off syntax highlighting
  " via :syntax off.
  " Note: Must allow nesting of autocmds so that the :syntax enable triggers
  " the ColorScheme event. Otherwise, some highlighting groups may not be
  " restored properly.
  autocmd! BufWinEnter * nested if exists('syntax_on') && ! exists('b:current_syntax') && ! empty(&l:filetype) | syntax enable | endif

  " The above does not handle reloading via :bufdo edit!, because the
  " b:current_syntax variable is not cleared by that. During the :bufdo,
  " 'eventignore' contains \"Syntax\", so this can be used to detect this
  " situation when the file is re-read into the buffer. Due to the
  " 'eventignore', an immediate :syntax enable is ignored, but by clearing
  " b:current_syntax, the above handler will do this when the reloaded buffer
  " is displayed in a window again.
  autocmd! BufRead * if exists('syntax_on') && exists('b:current_syntax') && ! empty(&l:filetype) && index(split(&eventignore, ','), 'Syntax') != -1 | unlet! b:current_syntax | endif
augroup END

" Prettier
autocmd FileType javascript set formatprg=prettier\ --stdin

" Set VRC format to json:
" let g:vrc_output_buffer_name = '__VRC_OUTPUT.json'

" let g:vrc_include_response_header = 1
let g:vrc_curl_opts = {'-i': ''}

" Set format
let s:vrc_auto_format_response_patterns = {
  \ 'json': 'python -m json.tool',
  \ 'xml': 'xmllint --format -',
\}

" Set auto spell for markdown
autocmd FileType markdown,md,latex,tex,txt,text,liquid setlocal spell spelllang=en_us textwidth=80 complete+=kspell
let g:vim_markdown_conceal = 0
let g:markdown_fenced_languages = ['javascript', 'ruby', 'sh', 'yaml', 'html', 'coffee', 'json', 'diff', 'haskell']
" YAML matter for Jekyll and Liquid
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 0
" let g:liquid_highlight_types = g:markdown_fenced_languages
" autocmd FileType markdown,md,latex,tex,txt,text,liquid syntax match Comment /\%^---\_.\{-}---$/
" autocmd FileType markdown,md,latex,tex,txt,text,liquid syn region lqdHighlight     start=/^{%\s*highlight\(\s\+\w\+\)\{0,1}\s*%}$/ end=/{%\s*endhighlight\s*%}/ contains=@Spell
