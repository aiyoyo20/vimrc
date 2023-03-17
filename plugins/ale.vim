" 代码检查
Plug 'dense-analysis/ale'

"  linter ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ale_linters = {
    \ 'sh':['shellcheck'],
    \ 'python':[
        \ 'mypy',
        \ 'pylint',
        \ 'vulture',
        \ 'refurb',
        \ 'bandit'],
    \ 'go':[
        \ 'golangci-lint',
        \ 'golint',
        \ 'gopls',
        \ 'gosimple',
        \ 'gotype',
        \ 'govet'],
    \ 'lua':['luacheck', 'lua-language-server'],
    \ 'proto':[
        \ 'buf_lint',
        \ 'protoc-gen-lint',
        \ 'protolint'],
    \ 'html':['angular', 'htmlhint', 'vscodehtml'],
    \ 'css':['stylelint'],
    \ 'javascript':['eslint', 'flow-language-server', 'jshint'],
    \ 'typescript':['eslint', 'tslint', 'tsserver', 'typecheck', 'xo'],
    \ 'vue':['vls'],
    \ 'json':['eslint', 'jsonlint'],
    \ 'yaml':['yaml-language-server',],
    \ 'toml':['dprint'],
    \ 'dockerfile':['dockerfile_lint'],
    \ 'markdown':['vale', 'alex', 'remark-lint'],
    \ 'sql':['sql-lint'],
    \ }

" pylint setting
let g:ale_python_pylint_use_msg_id=1


" fixer ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"  ruff、yapf、black
"  使用不同的格式化规则和算法，因此它们之间可能会发生冲突，选择一个即可
let g:ale_fixers = {
    \ '*': ['trim_whitespace'],
    \ 'sh':['shfmt'],
    \ 'python':[
        \ 'add_blank_lines_for_python_control_statements',
        \ 'black',
        \ 'isort',
        \ 'pyflyby',
        \ ],
    \ 'go':[
        \ 'gofmt',
        \ 'gopls',
        \ 'goimports',
        \ 'golines',
        \ 'gofumpt',],
    \ 'lua':['lua-format'],
    \ 'proto':['protolint'],
    \ 'html':['prettier'],
    \ 'css':['prettier'],
    \ 'javascript':['dprint', 'prettier'],
    \ 'typescript':['dprint', 'prettier'],
    \ 'vue':['vls', 'prettier'],
    \ 'json':['dprint', 'prettier'],
    \ 'yaml':['prettier'],
    \ 'toml':['dprint'],
    \ 'dockerfile':['dprint'],
    \ 'markdown':['remark-lint'],
    \ 'sql':['sqlfluff', 'sqlformat'],
    \ }

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" sign

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter% - %code%][%severity%]: %s'
" --------------------------------------------------------------------


" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" virtualtext

let g:ale_virtualtext_cursor = 0  " 关闭虚拟文本提示
" --------------------------------------------------------------------


" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" location list

let g:ale_set_loclist = 1
let g:ale_open_list = 1   " 设置为 1 ，会在打开文件后自动打开 local list 窗口
" --------------------------------------------------------------------


" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" linter

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
" --------------------------------------------------------------------

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" fix

" remove_trailing_lines  删除空行
" trim_whitespace  删除行尾空格

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" --------------------------------------------------------------------
