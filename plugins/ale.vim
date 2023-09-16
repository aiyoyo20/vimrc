" 代码检查
Plug 'dense-analysis/ale'

"  linter ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ale_linters = {
    \ 'html':['proselint','tidy','htmlhint'],
    \ 'css':['stylelint'],
    \ 'javascript':['xo','standard'],
    \ 'typescript':['xo','standard'],
    \ 'vue':['vls'],
    \ 'sh':[
        \ 'language-server',
        \ 'shellcheck',
        \ ],
    \ 'lua':[
        \ 'luacheck', 
        \ 'lua-language-server',
        \ ],
    \ 'vim':[
        \ 'vint',
        \ 'vimls',
        \ ],
    \ 'go':[
        \ 'golangci_lint',
        \ 'revive',
        \ 'gopls',
        \ ],
    \ 'python':[
        \ 'bandit',
        \ 'mypy',
        \ 'pylint',
        \ 'refurb',
        \ 'vulture',
        \ ],
    \ 'json':['jq', 'spectral'],
    \ 'yaml':[
        \ 'ls',
        \ 'spectral',
        \ 'yamllint',
        \],
    \ 'proto':[
        \ 'buf_lint',
        \ 'protoc-gen-lint',
        \ 'protolint',
        \ ],
    \ 'sql':['sqlfluff'],
    \ 'dockerfile':['hadolint'],
    \ 'markdown':['markdownlint','marksman'],
    \ 'gitcommit':['gitlint'],
    \ 'awk':['gawk'],
    \ }

" pylint setting
let g:ale_python_pylint_use_msg_id=1


" fixer ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"  ruff、yapf、black
"  使用不同的格式化规则和算法，因此它们之间可能会发生冲突，选择一个即可
let g:ale_fixers = {
    \ '*': ['trim_whitespace'],
    \ 'html':['prettier'],
    \ 'css':['prettier'],
    \ 'javascript':['dprint', 'prettier','xo','standard'],
    \ 'typescript':['dprint', 'xo'],
    \ 'vue':['prettier'],
    \ 'sh':['shfmt'],
    \ 'lua':['stylua'],
    \ 'vim':[],
    \ 'go':[
        \ 'revive',
        \ 'gopls',
        \ 'goimports',
        \ 'gofumpt',],
    \ 'python':[
        \ 'add_blank_lines_for_python_control_statements',
        \ 'black',
        \ 'isort',
        \ ],
    \ 'json':['jq'],
    \ 'yaml':['yamlfmt','yamlfix','prettier'],
    \ 'toml':['dprint'],
    \ 'proto':['protolint','buf-format'],
    \ 'sql':['sqlfluff'],
    \ 'dockerfile':['dprint'],
    \ 'markdown':['prettier','pandoc'],
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
