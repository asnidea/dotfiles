""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Vim 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"取消VI兼容
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  通用设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置文件编码检测类型及支持格式
set fenc=utf-8
set fencs=utf-8,gb18030,gbk,gb2312,cp936
"设定编码
set encoding=utf-8
set fileencodings=utf-8,chinese,ucs-bom,gb18030,gbk,gb2312,cp936,big5,latin1

" 文件格式，默认 ffs=dos,unix
" ffs=unix,dos,mac

" 设置开启语法高亮  
syntax on  

"显示行号  
set number
"显示相对行号
" set relativenumber

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
" 总是显示状态行
set laststatus=2
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=[%n]%<%f%y%h%m%r%=[%b\ 0x%B]\ %l\ of\ %L,%c%V\ Page\ %N\ %P
 
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


"高亮鼠标位置 && 用浅色高亮当前行
if (g:isGUI)  
	"cursorline  highlight(高亮当前行)
	set cursorline               
	hi CursorLine guibg=#666666 
	hi CursorColumn guibg=#333333 
	"cursorcolumn highlight(高亮当前列)          
	"set cursorcolumn
	"highlight CursorLine cterm=none ctermbg=2 ctermfg=0

	" 用浅色高亮当前行
	autocmd InsertLeave * se nocul
	autocmd InsertEnter * se cul
endif 

" 字体设置 && Color schema
" if (g:isGUI) 如果在 GUI 环境下运行则设置下面语句 
	" set guifontwide=Ubuntu\ Mono\ 14
	" color molokai
" else
	" color desert
" endif
color desert

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  按键设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 把esc映射为jj
inoremap jj <ESC>

" 把leaderkey改为，
let mapleader=","

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 快捷键粘贴映射到F3键 
nmap <F3> "+p 
imap <F3> <Esc>"+p 

"与windows共享剪贴板
set clipboard+=unnamed

" 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" 通过":W"命令来强制保存只读文件
cmap W! w !sudo tee >/dev/null %
cmap w!! w !sudo tee >/dev/null %



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Plugins 设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 基于 vim-plug 来进行插件管理

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" 补全
Plug 'ervandew/supertab'
" 文档代码搜索:  Ctrl + p 快捷键
Plug 'kien/ctrlp.vim'
" 文本快速跳转插件
Plug 'easymotion/vim-easymotion'
" Ag：跨文件代码查找
Plug 'rking/ag.vim'  "用Ag取代ack
" 状态行airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
"用于快速切换括号/引号或者标签
Plug 'tpope/vim-surround'
" repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" 快速选择
Plug 'terryma/vim-expand-region'
" Vim 中对齐文本
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" markdown
Plug 'plasticboy/vim-markdown'
" markdown preview
Plug 'iamcco/markdown-preview.vim'

" 符号(括号，引号)自动补全
Plug 'raimondi/delimitmate'
" 缩进提示线
Plug 'yggdroot/indentline'
" 括号等匹配
Plug 'jiangmiao/auto-pairs'

"color
Plug 'flazz/vim-colorschemes'

" Vim 启动页面
Plug 'mhinz/vim-startify'

" git
Plug 'tpope/vim-fugitive'

"taglist
" Plug 'majutsushi/tagbar'
"nerd
" Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" 输入法切换(only mac)
" Plug 'ybian/smartim'

" 语法检查
" syntastic 插件已经不推荐了 Plug 'scrooloose/syntastic'
" ALE 代码语法异步检测插件
" Plug 'w0rp/ale'

" 切换缓冲区: 如果用airline，则取消这个插件
" Plug 'fholgado/minibufexpl.vim'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" fzf
" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" If installed using Homebrew
Plug '/usr/local/opt/fzf'
" If installed using git
" Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Plug Commands
" PlugInstall
" PlugUpdate
" PlugClean
" PlugUpgrade
" PlugStatus

" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                插件设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-colorschemes
"-----------------------------------------------------------------
" colorscheme molokai
colorscheme solarized


" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
"-----------------------------------------------------------------
" :NERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
let NERDTreeWinSize=35
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$''cscope\.', '\.o$', 'ctags$']
let NERDTreeShowBookmarks = 1 
let NERDChristmasTree = 1 
let NERDTreeWinPos = "left" 

" NERDTree插件的快捷键
" imap <silent> <F2> <esc>:NERDTreeToggle<CR>
" nmap <silent> <F2> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" plugin - NERD_commenter.vim 注释代码用的
"-----------------------------------------------------------------
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释
" 注：count参数可选，无则默认为选中行或当前行
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看

" Command-/ to toggle comments
"-----------------------------------------------------------------
" map <C-/> <plug>NERDCommenterToggle<CR>
" imap <C-/> <Esc><plug>NERDCommenterToggle<CR>i

" easymotion
"-----------------------------------------------------------------
"文件跳转: ,,w or ,,b
"文件跳转: ,,w or ,,b

" vim-surround
"-----------------------------------------------------------------
" normal mode:
" ds  - delete a surrounding - ds"
" cs  - change a surrounding - cs"'
" ys  - add a surrounding -  ysiw)
" yS  - add a surrounding and place the surrounded text on a new line + indent it
" yss - add a surrounding to the whole line - yss(
" ySs - add a surrounding to the whole line, place it on a new line + indent it
"
" visual mode
" s   - in visual mode, add a surrounding
" S   - in visual mode, add a surrounding but place text on new line + indent 
" visual 模式下的按键绑定
" simple surround {{{
vmap " S"
vmap ' S'
vmap ` S`
vmap [ S[
vmap ( S(
vmap { S{
vmap } S}
vmap ] S]
vmap ) S)
" }}}
" 此插件可以跟 repeat.vim 配合使用

" tabular
"-----------------------------------------------------------------
" 冒号对齐 ： :Tab /:
" 逗号对齐 ： :Tab /,
" //对齐   ： :Tab /\/\/

" vim-easy-align
"-----------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vipga=  : vi + gp + '='
" gaip=   : ga + ip + '='

" character: <Space>, =, :, ., |, &, #, and ,.

" vim-expand-region
"-----------------------------------------------------------------
" map K <Plug>(expand_region_expand)
" map J <Plug>(expand_region_shrink)
let g:expand_region_use_select_mode = 1

" vim-multiple-cursors
"-----------------------------------------------------------------
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" ale
"-----------------------------------------------------------------
" 参考 [Vim插件之al](https://www.cnblogs.com/awakenedy/articles/9110610.html)h
" "始终开启标志列
" let g:ale_sign_column_always = 1
" let g:ale_set_highlights = 0
" "自定义error和warning图标
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
" "在vim自带的状态栏中整合ale
" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" "显示Linter名称,出错或警告等相关信息
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
" nmap sp <Plug>(ale_previous_wrap)
" nmap sn <Plug>(ale_next_wrap)
" "<Leader>s触发/关闭语法检查
" nmap <Leader>s :ALEToggle<CR>
" "<Leader>d查看错误或警告的详细信息
" nmap <Leader>d :ALEDetail<CR>
" "文件内容发生变化时不进行检查
" let g:ale_lint_on_text_changed = 'never'
" "打开文件时不进行检查
" let g:ale_lint_on_enter = 0

" " CTags
" "-----------------------------------------------------------------
" map <F12> :!ctags <CR> <CR> :!cscope -Rbq<CR><CR>
" set tags=tags;
" "这个分号是不可以缺省的
" 
" " Tagbar
" "-----------------------------------------------------------------
" " nnoremap <silent> <F7> :TagbarToggle<CR>
" nmap <F7> :TagbarToggle<CR>
" let g:tagbar_width=35
" " set focus to TagBar when opening it
" let g:tagbar_autofocus = 1

" Ag
"-----------------------------------------------------------------
let g:ackprg = 'ag --nogroup --nocolor --column'

" Ctrlp
"-----------------------------------------------------------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" 用AG替换Grep，搜索更快
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


"缩进指示线indentline
"-----------------------------------------------------------------
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

" "Change Character Color: GVim
" let g:indentLine_color_gui = '#A4E57E'

" " 设置UltiSnips
" "-----------------------------------------------------------------
" let g:UltiSnipsExpandTrigger = "<Tab>"
" " let g:UltiSnipsExpandTrigger = "<c-j>"
" let g:UltiSnipsJumpForwardTrigger = "<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" 设置SuperTab 
"-----------------------------------------------------------------
let g:SuperTabRetainCompletionType="context"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
" let g:SuperTabDefaultCompletionType    = '<C-n>'

" Scaladoc comment
"-----------------------------------------------------------------
"let g:scala_scaladoc_indent = 1

" Markdown
"-----------------------------------------------------------------
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set filetype=markdown

