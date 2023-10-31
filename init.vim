"*********************************************************************
" base
" {
set number                   " 显示行号
set cursorline               " 突出显示当前行
set cursorcolumn             " 突出显示当前列
set ruler                    " 显示光标当前位置
set showmatch                " 显示括号匹配
set showmode                 " 在状态行上显示当前模式的消息
set showcmd                  " 在状态行里显示 (部分) 命令
set colorcolumn=72,80,100    " 行字符长度域，可设置多个参数

" tab 缩进
set expandtab        " 使用空格替换 tab
set tabstop=4        " 设置Tab长度为4空格
set shiftwidth=4     " 设置自动缩进长度为4空格
set autoindent       " 自动缩进，继承前一行的缩进方式

set incsearch        " 开启实时搜索
set ignorecase       " 搜索时大小写不敏感
set laststatus=2     " 总是显示状态栏
set autoread         " 有 Vim 之外的改动时自动重读文件
set autochdir        " 自动切换工作目录
set title            " 设置 Vim 窗口标题。
set noerrorbells     " 关闭错误提示的响铃
set mouse=a        " 允许使用鼠标

syntax on                  " 打开语法高亮
filetype plugin indent on  " 启用自动补全
filetype off

set clipboard=unnamed  " 将寄存器与系统剪贴板进行关联

" 加载子模块
source $VIM/plugin.vim

" }
"*********************************************************************



"*********************************************************************
"" Functions
" {
"
" }
"*********************************************************************



"*********************************************************************
"" Commands
" {
augroup AutoCmd
    
    " 退出插入模式指定类型的文件自动保存
    autocmd InsertLeave *.go,*.sh,*.py,*.md,*.js,*.css,*.html,*.txt write
    
    " Python runner
    autocmd FileType python nnoremap <buffer> <C-i> :w <RETURN> :!python % <RETURN>
    
    " 保存 .vimrc 文件后，配置立刻生效(暂时保留吧，如果是模块化的，改动的不是这个文件，这条命令并无实际意义)
    " autocmd! BufWritePost $HOME/.vimrc source %
augroup END
" }
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"*********************************************************************



"*********************************************************************
"" Abbreviations
" {
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
" }
"*********************************************************************

