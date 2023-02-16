" 代码检查
Plug 'dense-analysis/ale'
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"  linter ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ale_linters = {
    \ 'sh':['shellcheck'],
    \ 'python':['pycodestyle', 'flake8', 'pylint'],
    \ 'go':['golangci-lint', 'golint', 'gopls', 'gosimple', 'gotype', 'govet'],
    \ 'proto':['buf_lint', 'protoc-gen-lint', 'protolint'],
    \ 'html':['angular', 'htmlhint', 'vscodehtml'],
    \ 'css':['cspell', 'csslint', 'fecs', 'stylelint', 'vscodecss'],
    \ 'javascript':['eslint', 'flow-language-server', 'jshint'],
    \ 'typescript':['eslint', 'tslint', 'tsserver', 'typecheck', 'xo'],
    \ 'vue':['vls'],
    \ 'json':['cspell', 'eslint', 'jq', 'jsonlint', 'spectral', 'vscodejson'],
    \ 'yaml':['yaml-language-server'],
    \ 'toml':['dprint'],
    \ 'dockerfile':['dockerfile_lint'],
    \ 'markdown':['markdownlint'],
    \ 'sql':['sql-lint'],
    \ }

" fixer ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ale_fixers = {
    \ '*': ['trim_whitespace'],
    \ 'sh':['shfmt'],
    \ 'python':['add_blank_lines_for_python_control_statements',
        \ 'autopep8',
        \ 'black',
        \ 'isort',
        \ 'yapf',
        \ ],
    \ 'go':['gofmt', 'gopls', 'goimports', 'golines', 'gofumpt',],
    \ 'proto':['protolint'],
    \ 'html':['prettier'],
    \ 'css':['prettier'],
    \ 'javascript':['dprint', 'prettier'],
    \ 'typescript':['dprint', 'prettier'],
    \ 'vue':['vls', 'prettier'],
    \ 'json':['dprint', 'prettier'],
    \ 'yaml':['yamlfix', 'prettier'],
    \ 'toml':['dprint'],
    \ 'dockerfile':['dprint'],
    \ 'markdown':['dprint', 'prettier'],
    \ 'sql':['sqlformat', 'sqlfmt', 'sqlfluff'],
    \ }

" remove_trailing_lines  删除空行
" trim_whitespace  删除行尾空格

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
