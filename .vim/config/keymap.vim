"*****************************************************************************
" Vim Key Mapping:
"
" Path: ~/.vim/config/keymap.vim
" Author: Chen Zhao
" Github: @crunchysoul
" Dotfile Links: https://github.com/crunchysoul/dotfiles-macbook-pro
" Last Update: 2017-12-12 17:03
"
" Notes:
" 1. Mapping Rules:
"   map  - Display normal, visual, select and operator pending modes maps
"   map! - Display insert and command-line mode
"   nmap, nnoremap, nunmap - Normal mode
"   imap, inoremap, iunmap - Insert and Replace mode
"   vmap, vnoremap, vunmap - Visual and Select mode
"   xmap, xnoremap, xunmap - Visual mode
"   smap, snoremap, sunmap - Select mode
"   cmap, cnoremap, cunmap - Command-line mode
"   omap, onoremap, ounmap - Operator pending mode
"   map and noremap are recursive and non-recursive
"*****************************************************************************

" Key Mapping - Genereal:
"*****************************************************************************
" Leader Key:
map ; <Leader>

" Source:
map <leader>s :source ~/.vimrc <bar> :up <bar> :e<ENTER>

" Exit Paste Mode:
set pastetoggle=<f2>

" Remove Search Mark:
map ;nh :let @/ = "" <CR>

" Fold:
" space open/closes folds
nnoremap <space> za

" React Component Jump:
map <Leader>gf yiw?./<C-r>0<CR>;nhgf<CR>

" Key Mapping - File Navigation:
"*****************************************************************************
" switch windows:
map <Leader>j <C-W>W
map <Leader>k <C-W>w
" switch buffers:
nnoremap <Leader>2 :bnext<CR>
nnoremap <Leader>1 :bprevious<CR>
" switch tabs:
map <Leader>3 gT
map <Leader>4 gt
map <Leader>5 <C-^>
" buffer list:
map <Leader>` :ls<CR>:b<Space>
" delete buffer from list:
map <Leader>ld :ls<CR>:bd
" close buffer:
map <Leader>z :BD <cr>
" close buffer and close window:
map <Leader>bd :bd <cr>

" Key Mapping - Edit:
"*****************************************************************************
" Escape Key:
inoremap jk <ESC>
"enable :W to :w
command! W w
" write:
map <Leader>w :w<cr>
" write and quite:
map <Leader>qq :x<cr>
" indentation adjustment:
map <Leader>, gg=G<C-o><C-o>
" swap $ and _g: end of line doesn't include the line break
nnoremap $ g_
vnoremap $ g_
" Using j/k for softlines(wrap) as well:
nnoremap j gj
nnoremap k gk

" Key Mapping - Plugins:  
"*****************************************************************************
" ALE Fix Toggle:
nmap <Leader>fx <Plug>(ale_fix)

" Goyo Toggle:
nnoremap <Leader>ff :Goyo<CR>

" Gundo Toggle:
nnoremap <leader>u :GundoToggle<CR>

" Hybrid Line Number:
nnoremap <silent> <C-n> :set relativenumber!<cr>"

" IndentWise:
map [0 <Plug>(IndentWisePreviousGreaterIndent)
map ]0 <Plug>(IndentWiseNextGreaterIndent)

" Livedown Toggle:
nmap <Leader>mm :LivedownToggle<CR>

" NERDTree Toggle:
map <Leader>nn :NERDTreeToggle<cr>

" NERDTree Reveal Current File:
map <Leader>r <esc>:NERDTreeFind<cr>

" Substitute Emoji:
" Emoji replacement and clean the search pattern:
nnoremap <Leader>em :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g <bar> :let @/ = "" <CR>

" Tagbar Toggle:
nmap <F8> :TagbarToggle<CR>
