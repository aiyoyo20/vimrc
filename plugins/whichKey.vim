"*********************************************************************
" KEY MAPS
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Plug 'liuchengxu/vim-which-key',{ 'on': ['WhichKey', 'WhichKey!'] }

let g:mapleader="\<Space>"
let g:which_key_map =  {}  " Create map to add keys to
let g:which_key_sep = '→'  " Define a separator
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" hide all mappings outside of the elements of the description dictionary
let g:which_key_ignore_outside_mappings = 1

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

let g:which_key_map = {
      \ '1' :  'Tab1' ,
      \ '2' :  'Tab2' ,
      \ '3' :  'Tab3' ,
      \ '4' :  'Tab4' ,
      \ '5' :  'Tab5' ,
      \ '6' :  'Tab6' ,
      \ '7' :  'Tab7' ,
      \ '8' :  'Tab8' ,
      \ '9' :  'Tab9' ,
      \ }

nmap <leader>b1 :b1<CR>
nmap <leader>b2 :b2<CR>
nmap <leader>b3 :b3<CR>
nmap <leader>b4 :b4<CR>
nmap <leader>b5 :b5<CR>
nmap <leader>b6 :b6<CR>
nmap <leader>b7 :b7<CR>
nmap <leader>b8 :b8<CR>
nmap <leader>b9 :b9<CR>

let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' :  'buffer-1'         ,
      \ '2' :  'buffer-2'         ,
      \ '3' :  'buffer-3'         ,
      \ '4' :  'buffer-4'         ,
      \ '5' :  'buffer-5'         ,
      \ '6' :  'buffer-6'         ,
      \ '7' :  'buffer-7'         ,
      \ '8' :  'buffer-8'         ,
      \ '9' :  'buffer-9'         ,
      \ 'f' :  'first-buffer'     ,
      \ 'd' :  'last-buffer'      ,
      \ 'n' :  'next-buffer'      ,
      \ 'p' :  'previous-buffer'  ,
      \ }

" commentary.vim
let g:which_key_map.c = {
      \ 'name' : '+commenter',
      \ 'c' : ['Commentary'        ,  'commentary'         ],
      \ 'l' : ['CommentaryLine'    ,  'commentaryLine'     ],
      \ 'u' : ['ChangeCommentary'  ,  'change commentary'  ],
      \ }

let g:which_key_map.f = {
      \ 'name' : '+find/format/fix',
      \ 'f' : ['CtrlP'          , 'search file'            ],
      \ }

let g:which_key_map.l = {
      \ 'name' : '+LSP/Language' ,
      \ 'h' : ['LspHover'                   , 'hover'                  ] ,
      \ 'g' : ['LspDefinition'              , 'go definition'          ] ,
      \ 'f' : ['LspDocumentFormat'          , 'Format entire document' ] ,
      \ 'S' : ['LspStatus'                  , 'workspace-symbol'       ] ,
      \ 'r' : ['LspRename'                  , 'Rename symbol'          ] ,
      \ 'd' : ['LspDocumentDiagnostics'     , 'diagnostics information'] ,
      \ 'b' : ['LspNextError'               , 'next error'             ] ,
      \ 'a' : ['LspPreviousError'           , 'previous error'         ] ,
      \ 'm' : {
        \ 'name' : '+markdown',
        \ 'p' : ['MarkdownPreview'     , 'Markdown-Preview'       ],
        \ 's' : ['MarkdownPreviewStop' , 'Markdown-Preview-Stop'  ],
        \ },
      \ 'p' : {
        \ 'name' : '+python',
        \ 'd' :['Pydocstring'     , 'add python doc'   ],
        \ 'f' :['PydocstringFormat', 'python doc format'],
        \ },
      \ }

nmap <leader>sq :wq<CR>
nmap <leader>ss :w<CR>
nmap <leader>st :sort<CR>
nmap <leader>su :sort u<CR>
let g:which_key_map.s = {
      \ 'name' : '+sort/save',
      \ 's' : 'save file'            ,
      \ 'q' : 'save file and exit'   ,
      \ 't' : 'sort content'         ,
      \ 'u' : 'sort unique'          ,
      \ }


" tabular
nmap <leader>tt1 :Tabularize /=<CR>
nmap <leader>tt2 :Tabularize /,<CR>
nmap <leader>tt3 :Tabularize /:<CR>
nmap <leader>tt4 :Tabularize /\|<CR>

" bullets.vim
nmap <leader>tbs :RenumberSelection<CR>
nmap <leader>tba :RenumberList<CR>

" Vista
" terminal emulation
let g:which_key_map.t = {
      \ 'name' : '+tools',
      \ 'n' : ['NERDTreeToggle', 'open/close file tree' ],
      \ 's' : ['terminal'      , 'terminal emulation'   ],
      \ 't' : {
        \ 'name' : '+tabular/tab',
        \ '1' : 'align with =',
        \ '2' : 'align with ,',
        \ '3' : 'align with :',
        \ '4' : 'align with |',
        \ 'N'      : ['tabNext'     ,'tabN[ext]'       ],
        \ 'c'      : ['tabclose'    ,'tabc[lose]'      ],
        \ 'd'      : ['tabdo'       ,'tabdo'           ],
        \ 'e'      : ['tabedit'     ,'tabe[dit]'       ],
        \ 'f'      : ['tabfirst'    ,'tabfir[st]'      ],
        \ 'l'      : ['tablast'     ,'tabl[ast]'       ],
        \ 'm'      : ['tabmove'     ,'tabm[ove]'       ],
        \ 'x'      : ['tabnew'      ,'tabnew'          ],
        \ 'n'      : ['tabnext'     ,'tabn[ext]'       ],
        \ 'o'      : ['tabonly'     ,'tabo[nly]'       ],
        \ 'p'      : ['tabprevious' ,'tabp[revious]'   ],
        \ 'r'      : ['tabrewind'   ,'tabr[ewind]'     ],
        \ 's'      : ['tabs'        ,'tabs'            ],
        \ },
      \ 'b' : {
        \ 'name' : '+bullets.vim',
        \ 's' : 'renumber select',
        \ 'a' : 'renumber all'   ,
        \ },
      \ 'v' : ['Vista!!'        , 'View and search symbols'],
      \ }

let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window'          ] ,
      \ 'd' : ['<C-W>c'     , 'delete-window'         ] ,
      \ '-' : ['<C-W>s'     , 'split-window-below'    ] ,
      \ '|' : ['<C-W>v'     , 'split-window-right'    ] ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns' ] ,
      \ 'h' : ['<C-W>h'     , 'window-left'           ] ,
      \ 'j' : ['<C-W>j'     , 'window-below'          ] ,
      \ 'l' : ['<C-W>l'     , 'window-right'          ] ,
      \ 'k' : ['<C-W>k'     , 'window-up'             ] ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left'    ] ,
      \ 'J' : [':resize +5' , 'expand-window-below'   ] ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right'   ] ,
      \ 'K' : [':resize -5' , 'expand-window-up'      ] ,
      \ '=' : ['<C-W>='     , 'balance-window'        ] ,
      \ 's' : ['<C-W>s'     , 'split-window-below'    ] ,
      \ 'v' : ['<C-W>v'     , 'split-window-below'    ] ,
      \ }

" Register which key map
autocmd! User vim-which-key call which_key#register('<Space>', "g:which_key_map")
"*********************************************************************
