"*****************************************************************************
" Airline Config:
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
