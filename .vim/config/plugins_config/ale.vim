"*****************************************************************************
" ALE Config:
"*****************************************************************************

" Less distracting when opening a new file
let g:ale_lint_on_enter = 0 

" do fix when save
let g:ale_fix_on_save = 1

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all --arrow-parens always'

" " user config files
" let g:ale_javascript_prettier_use_local_config = 1

" linter:
let g:ale_linters = {
      \   'javascript': ['prettier'],
      \   'json': ['eslint'],
      \   'go': ['gofmt'],
      \ }

" fixer:
let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'json': ['prettier'],
      \   'go': ['gofmt'],
      \ }

" let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['prettier-eslint']
      " \   'javascript': ['eslint'],
      " \   'javascript': ['prettier'],
      " \   'json': ['prettier'],
" let g:ale_javascript_prettier_options = '--trailing-comma all --no-bracket-spacing'
