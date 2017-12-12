"*****************************************************************************
" Goyo Config:
"*****************************************************************************

function! s:goyo_enter()
  " NERDTreeClose
  Limelight
  :set norelativenumber
endfunction

function! s:goyo_leave()
  " NERDTree
  " NERDTreeTabsOpen
  " this is equivalent to :execute \"normal \<C-W>\<C-W>\"
  :wincmd w
  Limelight!
  :set relativenumber
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
