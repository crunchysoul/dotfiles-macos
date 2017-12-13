"*****************************************************************************
" UltiSnips Config:
"*****************************************************************************

" better key bindings for UltiSnipsExpandTrigger
set runtimepath+=~/.vim/mysnips
let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsSnippetsDir="~/.vim/mysnips"
let g:UltiSnipsSnippetDirectories=["mysnips", "UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
let g:UltiSnipsEditSplit="horizontal"
" let g:UltiSnipsListSnippets="<c-k>"
