### 简介

原来使用的单配置文件 ".vimrc" ，但是随着使用时间的增加，为了更方便，添加了越来越对的插件和配置，整个文件的代码量已经很大了，几百行，虽然自己做了文件内内容分类，并且使用了比较醒目的块注释来区分各板块，在需要修改的时候仍然还是费劲。所以进行了简单的模块化处理。

主板块如下：

    init.vim ： 基本配置（非插件配置）、自己定义的一些函数、一些自动完成命令（退出自动保存、自动格式化文件的调用等）

    plugin.vim ： 各插件的集中加载，启用/禁用插件更方便。
    plugins ： 详细的插件设置，一些配置文件较多的单独出来。其他的一些如快速注释、插入文档模板等小工具合为一个。
        单独插件配置：
            ale.vim
            ctrlp.vim
            rainbow.vim
            vista.vim
            nerdtree.vim
            indentLine.vim
            airline.vim
            whichKey.vim
        主题配色：
            color.vim
        编程相关：
            code.vim
            markdown.vim
            vim-lsp.vim  主要是 vim-lsp 插件的配置项
        工具集合：
            tools.vim
        自定义的插件：
            fileHeader.vim

    .vimrc : 用户的初始加载信息


插件目录：

        asyncomplete.vim
        异步补全工具

        asyncomplete-file.vim
        用于提示补全目录、文件名

        asyncomplete-lsp.vim
        asyncomplete.vim 和 vim-lsp 的连接工具

        ale
        Asynchronous Lint Engine（异步语法检查引擎），应该是目前 vim 的最强语法检查工具。
        支持多种语言的多种工具，同种语言的多种语言联合增强使用也是可以的
        可以指定要使用的 linter，以及 linter 在设备上的地址，就可以不用配置环境变量了
        支持多种 fixer，格式化插件，引入的模块调整，去除空行，行尾空格等，这样就是不用新增插件 `vim-autoformat`、`vim-trailing-whitespace`。
        目前看到还支持补全和很多 lsp 的功能，是否替换掉`vim-lsp`有空再仔细对比看看。

        vim-lsp
        vim 使用 lsp 的工具，目前已经支持异常浮动可视（异常显示在语句后，而不是光标移动到异常行后才在 airline 等工具上显示）

        async.vim
        normalize async job control api for vim and neovim

        bullets.vim
        markdown 列表自动美化工具

        ctrlp.vim
        文件搜索工具

        markdown-preview.nvim
        markdown 文件在浏览器同步预览

        mathjax-support-for-mkdp
        markdown 的增强工具

        nerdcommenter
        快速注释工具

        nerdtree
        文件树浏览工具

        vim-nerdtree-tabs
        nerdtree 增强工具

        tabular
        用于文本过滤和对齐

        vim-doge
        文档生成助手，支持 python 等多种语言

        vim-airline
        状态栏增强工具

        vim-airline-themes
        vim-airline 的主题

        vim-pydocstring
        用于在 python 快速插入注释模板

        vim-which-key
        快捷键管理工具，可定制带提示的快捷键系统

        vista.vim
        tagbar 的替代品，用于显示函数、变量树

    语法片段插件：

        friendly-snippets
        为所有类型的编程语言预配置的语法片段集

        vim-vsnip
        语法片段引擎

        vim-vsnip-integ

    安装，配置后自动生效的插件：

        auto-pairs
        自动补全括号、引号的后半部分

        fcitx.vim
        配合 fcitx 、fcitx5 输入框架实现中英文的自动切换
        个人主要是用于在 normal 模式时确保是英文输入法

        gruvbox
        主题

        rainbow_parentheses.vim
        括号配对高亮（亮色）显示

        indentLine
        缩进可视化

        vim-startify
        vim 的初始页面美化小工具

        vim-list2tree
        将 markdown 的列表转为树形式

        vim-devicons
        为 nerdtree 、vim-startify 等插件添加美化图标，需要安装字体`Nerd-Font`

`whichKey`的部分快捷键设置参考了[spaceVim](https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/leader.vim)，想要自己的快捷键系统也可以去看看做个参考。

### 使用
在自行安装好 vim 和 neovim 后运行 `install.sh` 文件会自动将配置复制到合适的位置，等待完成即可。

`checkInstall.sh` 脚本可用于检查需要的一些语言环境和脚本环境。因为各语言的版本比较多，自己的版本并没有什么意义，就不给出了。会尝试安装所有工具。如`gopls`、`shellcheck`、`pylsp`等。如果有语言环境就能正常安装，比如系统都自带了 python ，所以 pylsp 都能安装，而 go 不是默认的，没有配置，gopls 就会安装失败。

暂时先这样，够用了，后续有其他的再更新。


