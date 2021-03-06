"*****************************************************************************
" Vim Rest Console Config:
"*****************************************************************************

" include repsonse header for curl:
let g:vrc_curl_opts = {
			\ '--connect-timeout': 3,
			\ '-i': '',
			\ '--max-time': 5,
			\}

" output format
let s:vrc_auto_format_response_patterns = {
			\ 'json': 'python -m json.tool',
			\ 'xml': 'xmllint --format -',
			\}
