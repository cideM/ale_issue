call plug#begin("~/.cache/nvim/plugged")
Plug 'dense-analysis/ale'
call plug#end()
PlugInstall

function! Hook(buffer) abort
" Tell ALE we're going to check this buffer.
call ale#other_source#StartChecking(a:buffer, 'example')
call ale#other_source#ShowResults(a:buffer, 'example', [{ "text": "hi", "lnum": 1, }])
endfunction

augroup ALE
autocmd!
autocmd User ALEWantResults call Hook(g:ale_want_results_buffer)
augroup END
