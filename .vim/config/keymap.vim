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
map <Leader>s :source ~/.vimrc <bar> :up <bar> :e<ENTER>

" Exit Paste Mode:
set pastetoggle=<f2>

" Remove Search Mark:
map ;nh :let @/ = "" <CR>

" Fold:
" space open/closes folds
nnoremap <space> za

" React Component Jump:
map <Leader>gf yiw?./<C-r>0<CR>;nhgf<CR>

" Key Mapping - Git:
"*****************************************************************************
" Gstatus:
:command! Gs :Gstatus
" Gpush:
:command! Gp :Gpush

" Key Mapping - File Navigation:
"*****************************************************************************
" switch windows:
map <Leader>j <C-W>W
map <Leader>k <C-W>w
" switch buffers:
nnoremap <Leader>1 :bprevious<CR>
nnoremap <Leader>2 :bnext<CR>
" go NERDTree Window:
map <Leader>3 1<C-W>W
" back from nerdtree/tagbar
map <Leader>4 1<C-W><C-P>
" go tagbar windows:
map <Leader>5 :TagbarOpen j<CR>
" switch tabs:
map <Leader>6 gT
map <Leader>7 gt
map <Leader>8 <C-^>
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
" nmap <Leader>fx <Plug>(ale_fix)

" Emmet Toggle:
" map <C-j>, <C-y>,
map <Leader>[ <C-y>,
" map <C-;>, <C-y>,

" Goyo Toggle:
" nnoremap <Leader>ff :Goyo<CR>

" Gundo Toggle:
nnoremap <Leader>u :GundoToggle<CR>

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

" Mix Formatter:
nmap <Leader>mf :MixFormat<CR>

" EasyMotion: <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" EasyMotion: s{char}{char} to move to {char}{char}
nmap m, <Plug>(easymotion-overwin-f2)

" EasyMotion: Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Coc: Make <c-j> used for trigger completion, completion confirm, snippet expand and jump like VSCode
inoremap <silent><expr> <c-j>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<c-j>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<c-j>'

" Coc: Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" FZF: set \ag to search under cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" CtrlP: ctrlp search under cursor
nmap <silent> <Leader><C-P> :CtrlP<CR><C-\>w
