"*****************************************************************************
" NERDTree Config:
"*****************************************************************************

" open NERDTree when open vim by default:
au VimEnter *  NERDTree

" move cursor to edit area by default:
au VimEnter * wincmd p

" close vim if the only window left open is a NERDTree:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree show hidden files by default:
let NERDTreeShowHidden=1

" file opened from NERDTree in new tab by default:
let NERDTreeMapActivateNode='<ENTER>'

" Do not display useless files in NERDTree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" minimal UI:
let NERDTreeMinimalUI = 1

" using directional arrows:
let NERDTreeDirArrows = 1

" disable NERDTree-Tabs automatically:
let g:nerdtree_tabs_open_on_console_startup = 0
