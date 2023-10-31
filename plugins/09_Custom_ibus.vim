 " ibus 输入法在退出插入模式后将输入法切换至英文
 autocmd InsertLeave * silent! !ibus engine xkb:us::eng
 
 " ibus 输入法在启动vim后将输入法切换至英文
 autocmd VimEnter * silent! !ibus engine xkb:us::eng
 autocmd CmdlineEnter * silent! !ibus engine xkb:us::eng