"*****************************************************************************
" ALE Config:
"*****************************************************************************

" Less distracting when opening a new file
let g:ale_lint_on_enter = 0 

" do fix when save
let g:ale_fix_on_save = 1

" linter:
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \ }

" fixer:
let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \ }
