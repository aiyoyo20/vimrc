### 简介

原来使用的单配置文件 ".vimrc"
，但是随着使用时间的增加，为了更方便，添加了越来越对的插件和配置，整个文件的代码量已经很大了，几百行，虽然自己做了文件内内容分类，并且使用了比较醒目的块注释来区分各板块，在需要修改的时候仍然还是费劲。所以进行了简单的模块化处理。

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
            vim-LSPp.vim  主要是 vim-LSPp 插件的配置项
        工具集合：
            tooLSP.vim
        自定义的插件：
            fileHeader.vim

    .vimrc : 用户的初始加载信息

插件目录：

        asyncomplete.vim
        异步补全工具

        asyncomplete-file.vim
        用于提示补全目录、文件名

        asyncomplete-LSPp.vim
        asyncomplete.vim 和 vim-LSPp 的连接工具

        ale
        Asynchronous Lint Engine（异步语法检查引擎），应该是目前 vim 的最强语法检查工具。
        支持多种语言的多种工具，同种语言的多种语言联合增强使用也是可以的
        可以指定要使用的 linter，以及 linter 在设备上的地址，就可以不用配置环境变量了
        支持多种 fixer，格式化插件，引入的模块调整，去除空行，行尾空格等，这样就是不用新增插件 `vim-autoformat`、`vim-trailing-whitespace`。
        目前看到还支持补全和很多 LSPp 的功能，是否替换掉`vim-LSPp`有空再仔细对比看看。

        vim-lsp
        vim 使用 LSP 的工具，目前已经支持异常浮动可视（异常显示在语句后，而不是光标移动到异常行后才在 airline 等工具上显示）

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

        （X）fcitx.vim

            配合 fcitx 、fcitx5 输入框架实现中英文的自动切换（主要是保证在命令模式是英文）

            个人主要是用于在 normal 模式时确保是英文输入法，每次装系统都要折腾以下，基本不自带，安装框架后还要安装输入法。

            直接使用 ibus 添加中文输入法方便很多。目前体验还可以。通过命令`autocmd InsertLeave * call system('ibus engine xkb:us::eng &')`可以实现退出插入模式进入命令模式是英文。

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

        fork-vim-template
        fork 自 `aperezdc/vim-template` 的模板补全插件

        vim-devicons
        图标管理，需要安装额外的字体，例如 Nerd Font ，其中包括了众多图标。只是需要安装不是必须要将系统的字体切换为该字体。

`whichKey`的部分快捷键设置参考了[spaceVim](https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/map/leader.vim)，想要自己的快捷键系统也可以去看看做个参考。

### LSP

[html
vscode-html-languageservice](https://github.com/microsoft/vscode-html-languageservice)

    sudo npm install -g vscode-html-languageservice vscode-html-languageserver-bin

[css
vscode-css-languageservice](https://github.com/microsoft/vscode-css-languageservice)

    sudo npm install -g vscode-css-languageservice vscode-css-languageserver-bin

[typescript
typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)

    sudo npm install -g typescript-language-server typescript

[vue vls/vetur](https://github.com/vuejs/vetur/tree/master/server)

    sudo npm install -g vls

[bash
bash-language-server](https://github.com/bash-lsp/bash-language-server)

    sudo npm i -g bash-language-server

[lua lua-language-server](https://github.com/LuaLS/lua-language-server)

[vim vim-language-server](https://github.com/iamcco/vim-language-server)

    sudo npm install -g vim-language-server

[go gopls](https://github.com/golang/tools/tree/master/gopls)

    go install golang.org/x/tools/gopls@latest

[python
python-lsp-server](https://github.com/python-lsp/python-lsp-server)

    pip install python-lsp-server

[json
vscode-json-languageserver](https://github.com/microsoft/vscode-json-languageservice)

    sudo npm install -g vscode-json-languageserver

[yaml
yaml-language-server](https://github.com/redhat-developer/yaml-language-server)

    sudo npm install -g yaml-language-server

[toml taplo](https://github.com/tamasfe/taplo)

[proto
buf-language-server](https://github.com/bufbuild/buf-language-server)

    go install github.com/bufbuild/buf-language-server/cmd/bufls@latest

[sql sql-language-server](https://github.com/joe-re/sql-language-server)

    sudo npm i -g sql-language-server

[dockerfile
dockerfile-language-server-nodejs](https://github.com/rcjsuen/dockerfile-language-server-nodejs)

    sudo npm install -g dockerfile-language-server-nodejs

[markdown marksman](https://github.com/artempyanykh/marksman)

### Linter、Fixer

#### html:

[proselint](https://github.com/amperser/proselint/)(Linter)

    pip install proselint

[tidy](https://github.com/htacg/tidy-html5)(Linter)

    sudo apt install tidy

[HTMLHint](https://github.com/HTMLHint)(Linter)

    sudo npm install htmlhint -g

#### css:

[csslint](https://github.com/CSSLint/csslint)(Linter)

    sudo npm install -g csslint

#### javascript、typescript

[xo](https://github.com/xojs/xo)

    sudo npm install -g xo

[standard](https://github.com/standard/standard)

    sudo npm install -g standard

#### vue:

[prettier](https://github.com/prettier/prettier)(Linter)(Fixer)

    sudo npm install prettier

#### bash:

[bash-language-server](https://github.com/bash-LSPp/bash-language-server)(LSP)(Linter)

    sudo npm install -g bash-language-server

[shellcheck](https://www.shellcheck.net)
[shellcheck-github](https://github.com/koalaman/shellcheck)(Linter)

sudo apt install shellcheck

[shfmt](https://github.com/mvdan/sh)(Fixer)

    go install mvdan.cc/sh/v3/cmd/shfmt@latest

#### lua:

[lua-language-server](https://github.com/LuaLS/lua-language-server)(LSP)(Linter)

[luacheck](https://github.com/mpeterv/luacheck)\[Linter\]

    luarocks install luacheck

[stylua](https://github.com/johnnymorganz/stylua)(Fixer)

#### vim:

[vim-language-server](https://github.com/iamcco/vim-language-server)(LSP)(Linter)

    npm install -g vim-language-server

[vint](https://github.com/Vimjas/vint)(Linter)

    pip install vim-vint

#### go:

[golangci-lint](https://github.com/golangci/golangci-lint)(Linter)

    go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

[revive](https://github.com/mgechev/c)(Linter)(Fixer)

    go install github.com/mgechev/revive@latest

[gofumpt](https://github.com/mvdan/gofumpt)(Fixer)

    go install mvdan.cc/gofumpt@latest

#### python:

[python-lsp-server](https://github.com/python-lsp/python-lsp-server)(LSP)(Linter)

    pip install "python-lsp-server[all]"

[bandit](https://github.com/PyCQA/bandit)(Linter)

    pip install bandit

[mypy](https://mypy-lang.org)(Linter)[mypy-github](https://github.com/python/mypy)(Linter)
： 官方的检查工具，能够对注解进行检查，校验类型正确性

pip install mypy

[pylint](https://www.pylint.org)[pylint-github](https://github.com/pylint-dev/pylint)(Linter)
： 包括但不限于文档检查，基于 mccabe 的代码复杂度检查等等

pip install pylint

[vulture](https://github.com/jendrikseipp/vulture)(Linter)： 查找无用的
Python 代码

    pip install vulture

[refurb](https://github.com/dosisod/refurb)(Linter) ： 自动化 Python
代码修复和重构的工具，让代码更优雅

    pip install refurb

[isort](https://github.com/PyCQA/isort)(Fixer) ： 对引入包进行排序

    pip install isort

下面的三种 format 工具选择一个即可

[black](https://github.com/psf/black)(Fixer)： uncompromising Python
code formatter ，目前使用的

    pip install black

[yapf](https://github.com/google/yapf)(Fixer) ： google 推出的格式化工具

    pip install yapf

[ruff](https://github.com/astral-sh/ruff)(Linter)(Fixer) ： rust
写的检查、格式化工具，很快

    pip install ruff

#### json:

[spectral](https://github.com/stoplightio/spectral)(Linter)

    sudo npm install -g @stoplight/spectral-cli

[jq](https://github.com/jqlang/jq)(Linter)(Fixer)

#### yaml:

[yaml-language-server](https://github.com/redhat-developer/yaml-language-server)(LSP)(Linter)

    sudo npm install -g yaml-language-server

[yamllint](https://github.com/adrienverge/yamllint)(Linter)

    pip install yamllint

[yamlfmt](https://github.com/google/yamlfmt)(Fixer)

    go install github.com/google/yamlfmt/cmd/yamlfmt@latest

[yamlfix](https://github.com/lyz-code/yamlfix)(Fixer)

    pip install yamlfix

[prettier](https://github.com/prettier/prettier)(Fixer)

    sudo npm install -g prettier

#### proto:

[buf](https://github.com/bufbuild/buf)(Linter)(Fixer)

    GO111MODULE=on GOBIN=/usr/local/bin go install github.com/bufbuild/buf/cmd/buf@v1.26.1

[protolint](https://github.com/yoheimuta/protolint)(Linter)(Fixer)

    go install github.com/yoheimuta/protolint/cmd/protolint@latest

[protoc-gen-lint](https://github.com/ckaznocha/protoc-gen-lint)(Linter)

    go install github.com/ckaznocha/protoc-gen-lint@latest

##### sql

[sqlfluff](https://github.com/sqlfluff/sqlfluff)(Linter)(Fixer)

    pip install sqlfluff

#### dockerfile:

[hadolint](https://github.com/hadolint/hadolint)(Linter)

#### markdown

[marksman](https://github.com/artempyanykh/marksman)(Linter)

[markdownlint](https://github.com/DavidAnson/markdownlint)

    sudo npm install markdownlint -g

[markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)(Linter)

    sudo npm install -g markdownlint-cli

[pandoc](https://github.com/jgm/pandoc)

### 使用

在自行安装好 vim 和 neovim 后运行 `install.sh`
文件会自动将配置复制到合适的位置，等待完成即可。

`checkInstall.sh`
脚本可用于检查需要的一些语言环境和脚本环境。因为各语言的版本比较多，自己的版本并没有什么意义，就不给出了。会尝试安装所有工具。如`gopLSP`、`shellcheck`、`pyLSPp`等。如果有语言环境就能正常安装，比如系统都自带了
python ，所以 pyLSPp 都能安装，而 go 不是默认的，没有配置，gopLSP
就会安装失败。

### TODO

1.  `aperezdc/vim-template` 插件的模板文件修改为自己的样式
2.  目前插件不能满足个人的点：
    1.  插件添加模板不能判断当前是否已有模板，会不断追加
    2.  撤回模板没有相应的命令（其实这个还好，一般只撤销文件头信息，删除头几行就可以了，或者添加后想要撤销可以利用
        vim 的 u 撤销）
    3.  缺少模板更新的功能（在有文件更新时间的前提下希望在每次修改文件后相应的时间跟随变化）
    4.  或者是更换模板，替换原来的模板风格为当前的风格

暂时先定这样，还没确定是去重写还是在原基础上修改。vim 提供了对
python、lua 等的支持，也有自己的开发语言 vimScript，如何选择还在考虑。
