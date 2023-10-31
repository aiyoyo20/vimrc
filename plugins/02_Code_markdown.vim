" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" markdown {

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'shinespark/vim-list2tree'

Plug 'dhruvasagar/vim-table-mode'  " markdown表格利器，以前是写好后使用tabular去调整。这个插件在编写的时候会自己调整结构
Plug 'godlygeek/tabular'        " 对齐，同时也是vim-markdown提示需要安装的
Plug 'preservim/vim-markdown'   " 目前主要用于高亮markdown文档中的代码块
let g:vim_markdown_folding_disabled = 1       " 禁止折叠
let g:vim_markdown_conceal = 0                " 禁止隐藏（链接、代码等），让其保持语句原本的样子
let g:vim_markdown_conceal_code_blocks = 0  " 禁用对代码围栏(```)的隐藏

" }
" --------------------------------------------------------------------
