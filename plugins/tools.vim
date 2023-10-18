" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Plug 'jiangmiao/auto-pairs'     " 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'preservim/nerdcommenter'  " 快速注释

Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
" 如果没有安装 dop ,可以`pip install doq`安装后使用下面的配置命令路径
let g:pydocstring_doq_path = '$HOME/.local/bin/doq'
" 指定文档风格
let g:pydocstring_formatter = 'google'

Plug 'kkoomen/vim-doge', { 'do': 'npm i --no-save && npm run build:binary:unix' }
let g:doge_doc_standard_python = 'google'
let g:doge_doc_standard_sh = 'google'
" --------------------------------------------------------------------