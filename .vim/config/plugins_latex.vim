"*****************************************************************************
" Latex (latexmk/vimtex) Config:
" in ~/.latexmk file
"*****************************************************************************

" diasble callback function to avoid terminal servername warning:
let g:vimtex_compiler_latexmk = {'callback' : 0}

" other tex setting for faster editing performance:
let g:tex_fast = "cmMprs"
let g:tex_conceal = ""
let g:tex_fold_enabled = 0
let g:tex_comment_nospell = 1

"let g:tex_flavor = "latex"
