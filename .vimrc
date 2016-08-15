set nocompatible               " be iMproved
filetype off                   " required!


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Vundle设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" 插件必须在vundle#begin和vundle#end之间
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
" Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
" Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
" Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
" Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
" Plugin 'ascenator/L9', {'name': 'newL9'}
" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称


" My Plugins here:

" 补全
Plugin 'ervandew/supertab'
"文件跳转:  Ctrl + p 快捷键
Plugin 'kien/ctrlp.vim'
"文件跳转
Plugin 'Lokaltog/vim-easymotion'
" 切换缓冲区
Plugin 'fholgado/minibufexpl.vim'
" 对齐
Plugin 'tsaleh/vim-align'
" Ag：跨文件代码查找
"Plugin 'mileszs/ack.vim'  用Ag取代ack
Plugin 'rking/ag.vim'
" 状态行
Plugin 'bling/vim-airline'
"用于快速切换括号/引号或者标签
Plugin 'tpope/vim-surround'
"在Vim 中对齐文本
Plugin 'godlygeek/tabular'
" 符号自动补全
Plugin 'raimondi/delimitmate'
" 缩进提示线
Plugin 'yggdroot/indentline'
" repeat.vim: enable repeating supported plugin maps with "."
Plugin 'tpope/vim-repeat'

Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/ZoomWin'

" git
Plugin 'tpope/vim-fugitive'

"snipmate
Plugin 'gmarik/snipmate.vim'
Plugin 'honza/vim-snippets'

"taglist
Plugin 'majutsushi/tagbar'
"nerd
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

"color
Plugin 'vim-scripts/Color-Sampler-Pack'


" Langs
" 神级插件，ZenCoding(原名)可以让你以一种神奇而无比爽快的感觉写HTML、CSS
Plugin 'mattn/emmet-vim'

Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'skammer/vim-css-color'
Plugin 'hallison/vim-markdown'

" Plugin 'tpope/vim-haml'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'itspriddle/vim-jquery'
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'mmalecki/vim-node.js'

" ruby
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rails.git'
" Plugin 'taq/vim-rspec.git'

" Plugin 'tomtom/tcomment_vim'


" 你的所有插件需要在下面这行之前
" Vundle#End
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  通用设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置文件编码检测类型及支持格式 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,GB2312,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 设置开启语法高亮  
syntax on  

"显示行号  
set number

" tab宽度  
set tabstop=4  
set cindent shiftwidth=4  
set autoindent shiftwidth=4 

" 查找设置 
set hlsearch 	"搜索高亮high light search
set incsearch  	"增量搜索
set ignorecase  "搜索时忽略大小写
set smartcase   "当搜索时输入的是大写字母开头时,使用大小写敏感进行搜索


" 高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
":match OverLength '/%101v.*'

" history文件中需要记录的行数，恢复必须用到。
set history=1024

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" vim 自身命令行模式智能补全
set wildmenu

" 设定文件浏览器目录为当前目录  
set bsdir=buffer 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 保存全局变量
set viminfo+=!

"不生成备份文件
set noswapfile
set nobackup
set nowb

set nospell
set linebreak
set showbreak=...



" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  显示设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""" 状态行设置
" " 总是显示状态行
" set laststatus=2
" " 我的状态行显示的内容（包括文件类型和解码）
" set statusline=[%n]%<%f%y%h%m%r%=[%b\ 0x%B]\ %l\ of\ %L,%c%V\ Page\ %N\ %P
" 
" ""我的状态行显示的内容（包括文件类型和解码）
" "set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" ""状态栏设置:文件路径、文件名、标记、文件类型、字符编码、文件格式、当前位置、当前相对位置、文件总行数、日期、星期
" ""set statusline=%F\ %h%1*%m%r%w%0*[%{strlen(&filetype)?&filetype:'none'},%{&encoding},%{&fileformat}]%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]\ \ \ "%{strftime('%y-%m-%d\ %A')} 
" 


" "在编辑过程中，在右下角显示光标位置的状态行
set ruler   
" set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 打开文件时，总是跳到退出之前的光标处
"autocmd BufReadPost *
"\ if line("'\"") > 0 && line("'\"") <= line("$") |
"\   exe "normal! g`\"" |
"\ endif


"高亮鼠标位置
if has("gui_running")  
"cursorline  highlight(高亮当前行)
set cursorline               
hi CursorLine guibg=#666666 
hi CursorColumn guibg=#333333 
"cursorcolumn highlight(高亮当前列)          
"set cursorcolumn
"highlight CursorLine cterm=none ctermbg=2 ctermfg=0
endif 

" 用浅色高亮当前行
if has("gui_running")
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set gfn=Ubuntu\ Mono\ 14
set guifontwide=Ubuntu\ Mono\ 14
endif

" Default color scheme
color desert

set guifontwide=Ubuntu\ Mono\ 14

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  按键设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 把esc映射为jj
inoremap jj <ESC>

" 把leaderkey改为，
let mapleader=","

" 如果前面有behave mswin，则以下3项可以忽略
" 把 CTRL-S 映射为保存 
"imap <C-S> <C-C>:w<CR>  
"ctr+c
"vnoremap <C-C> "+y
"ctr+v
"inoremap <C-V> <ESC>"+gPi

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 通过":W"命令来强制保存只读文件
" command W :w !sudo tee %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                插件设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
" :NERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$''cscope\.', '\.o$', 'ctags$']
let NERDTreeShowBookmarks = 1 
let NERDChristmasTree = 1 
let NERDTreeWinPos = "left" 

" NERDTree插件的快捷键
imap <silent> <F9> <esc>:NERDTreeToggle<CR>
nmap <silent> <F9> :NERDTreeToggle<CR>

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


" plugin - NERD_commenter.vim 注释代码用的
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释
" 注：count参数可选，无则默认为选中行或当前行
"-----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看

" Command-/ to toggle comments
map <C-/> <plug>NERDCommenterToggle<CR>
imap <C-/> <Esc><plug>NERDCommenterToggle<CR>i

" CTags
map <F12> :!ctags <CR> <CR> :!cscope -Rbq<CR><CR>
set tags=tags; 
"这个分号是不可以缺省的

" Tagbar
" nnoremap <silent> <F7> :TagbarToggle<CR> 
nmap <F8> :TagbarToggle<CR>
" set focus to TagBar when opening it
let g:tagbar_autofocus = 1

" 设置SuperTab 
let g:SuperTabRetainCompletionType="context" 


" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways


" Ag
let g:ackprg = 'ag --nogroup --nocolor --column'



