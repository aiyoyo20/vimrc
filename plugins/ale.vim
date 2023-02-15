" 代码检查
Plug 'dense-analysis/ale'
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" 需要的 linter
let g:ale_linters = {
    \ 'sh':['shellcheck'],
    \ 'python':['pycodestyle', 'flake8', 'pylint'],
    \ 'proto':['buf_lint', 'protoc-gen-lint', 'protolint'],
    \ 'go':['golangci-lint', 'golint', 'gopls', 'gosimple', 'gotype', 'govet',],
    \ 'yaml':['yaml-language-server'],
    \ 'dockerfile':['dockerfile_lint'],
    \ 'json':['cspell', 'eslint', 'jq', 'jsonlint', 'spectral', 'vscodejson'],
    \ 'css':['cspell', 'csslint', 'fecs', 'stylelint', 'vscodecss'],
    \ 'html':['angular', 'htmlhint', 'vscodehtml'],
    \ 'javascript':['eslint', 'flow-language-server', 'jshint'],
    \ 'typescript':['eslint', 'tslint', 'tsserver', 'typecheck', 'xo'],
    \ 'markdown'：[]，
    \ 'sql':['sql-lint'],
    \ 'vue':[]
    \ }
