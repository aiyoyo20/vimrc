" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Plug 'jiangmiao/auto-pairs'  " 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'godlygeek/tabular'   " 对齐
Plug 'preservim/nerdcommenter'  " 快速注释

Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
" 如果没有安装 dop ,可以`pip install doq`安装后使用下面的配置命令路径
let g:pydocstring_doq_path = '/home/aiyoyo/.local/bin/doq'
" 指定文档风格
let g:pydocstring_formatter = 'google'

Plug 'lilydjwg/fcitx.vim'
let g:fcitx5_remote = '/usr/bin/fcitx5-remote'
let g:fcitx5_rime = 1
" --------------------------------------------------------------------
