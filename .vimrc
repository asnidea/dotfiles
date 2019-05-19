""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Vim for Mac 
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


" 设置开启语法高亮  
syntax on  

" filetype
filetype on
" Enable filetype plugins
filetype plugin on
filetype indent on

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
" 根据 shell 模式不同采用以下两种方式。参考《Vim 实用技巧》技巧32 自动补全 Ex 命令 page 88
" bash shell 自动补全
"set wildmode=longest,list
" zsh 自动补全
set wildmenu
set wildmode=full

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
" 以下为未启动 vim-airline 插件的设置
"
" 总是显示状态行
" set laststatus=2
" 我的状态行显示的内容（包括文件类型和解码）
" set statusline=[%n]%<%f%y%h%m%r%=[%b\ 0x%B]\ %l\ of\ %L,%c%V\ Page\ %N\ %P
 
" ""我的状态行显示的内容（包括文件类型和解码）
" "set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" ""状态栏设置:文件路径、文件名、标记、文件类型、字符编码、文件格式、当前位置、当前相对位置、文件总行数、日期、星期
" ""set statusline=%F\ %h%1*%m%r%w%0*[%{strlen(&filetype)?&filetype:'none'},%{&encoding},%{&fileformat}]%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]\ \ \ "%{strftime('%y-%m-%d\ %A')} 
" 

" "在编辑过程中，在右下角显示光标位置的状态行
set ruler   
" set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" guifont
set guifont=Source\ Code\ Pro\ for\ Powerline:h16

" Default color scheme
" color desert
"color solarized
set background=dark

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

" 用 fzf + rg 取代 ctrlp + ag
" 文档代码搜索:  Ctrl + p 快捷键
" Plug 'kien/ctrlp.vim'
" Ag：跨文件代码查找
" Plug 'rking/ag.vim'  "用Ag取代ack

" 文本快速跳转插件
Plug 'easymotion/vim-easymotion'
" far: FIND AND REPLACE VIM PLUGIN
Plug 'brooth/far.vim'
" 状态行airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"用于快速切换括号/引号或者标签
Plug 'tpope/vim-surround'
" repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" 快速选择
Plug 'terryma/vim-expand-region'
" Vim 中对齐文本
" Plug 'godlygeek/tabular'
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

Plug 'jiangmiao/auto-pairs'

"color
Plug 'flazz/vim-colorschemes'

" Vim 启动页面
Plug 'mhinz/vim-startify'

" git
Plug 'tpope/vim-fugitive'

" UltiSnips
" Plug 'SirVer/ultisnips'
"snippet
Plug 'honza/vim-snippets'

"taglist
Plug 'majutsushi/tagbar'
"nerd
" Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" 输入法切换(only mac)
Plug 'ybian/smartim'


" 语法检查
" syntastic 插件已经不推荐了 Plug 'scrooloose/syntastic'
" ALE 代码语法异步检测插件
" Plug 'w0rp/ale'

" vim 输入法切换
"Plug 'lyokha/vim-xkbswitch'
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
map <C-/> <plug>NERDCommenterToggle<CR>
imap <C-/> <Esc><plug>NERDCommenterToggle<CR>i

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
" 此插件可以跟下面的 repeat.vim 配合使用

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


" 设置vim-airline
"-----------------------------------------------------------------
" set status line
set laststatus=2

" Theme
"let g:airline_theme="wombat"
let g:airline_theme="molokai"

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1

" 打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
" nnoremap <C-tab> :bn<CR>
" nnoremap <C-s-tab> :bp<CR>
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
" 设置consolas字体"前面已经设置过
"set guifont=Consolas\ for\ Powerline\ FixedD:h11

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif


" Ag
"-----------------------------------------------------------------
" let g:ackprg = 'ag --nogroup --nocolor --column'

" Ctrlp
"-----------------------------------------------------------------
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
" " set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" " 用AG替换Grep，搜索更快
" if executable('ag')
  " " Use Ag over Grep
  " set grepprg=ag\ --nogroup\ --nocolor
  " " Use ag in CtrlP for listing files.
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " " Ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
" endif


" FZF
"-----------------------------------------------------------------
"
" Command	List
" Files [PATH]	普通文件查找 (similar to :FZF)
" GFiles [OPTS]	git文件查找 (git ls-files)
" GFiles?	git文件查找 (git status)
" Buffers	buffer文件切换
" Colors	Color schemes
" Ag [PATTERN]	ag search result (ALT-A to select all, ALT-D to deselect all)
" Lines [QUERY]	加载的所有buffer里查找
" BLines [QUERY]	在当前buffer里查找包含某关键词的行
" Tags [QUERY]	以Tag查找 (ctags -R)
" BTags [QUERY]	Tags in the current buffer
" Marks	Marks
" Windows	Windows
" Locate PATTERN	locate command output
" History	v:oldfiles and open buffers
" History:	命令历史查找
" History/	Search history
" Snippets	Snippets (UltiSnips)
" Commits	Git commits (requires fugitive.vim)
" BCommits	Git commits for the current buffer
" Commands	Commands
" Maps	Normal mode mappings
" Helptags	Help tags 1
" Filetypes	File types

" 快捷键设置
nmap <C-p> :Files<CR> "ctrp + p
nnoremap <silent> <Leader>f :Files<CR>
" nnoremap <silent> <Leader>b :Buffers<CR>
" nmap <C-e> :Buffers<CR>
" let g:fzf_action = { 'ctrl-e': 'edit' }

" 参考[VIM与模糊搜索神器FZF的集成用法 - 从简单到高级 - 验证的进阶之路 - SegmentFault 思否](https://segmentfault.com/a/1190000016186540)
" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Far
"-----------------------------------------------------------------
" 操作: 
" :Far foo bar **/*.py
" :Fardo

"缩进指示线indentline
"-----------------------------------------------------------------
" let g:indentLine_char='┆'
let g:indentLine_char='¦'
let g:indentLine_enabled = 1
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'

" 语法检查syntastic
"-----------------------------------------------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" 设置UltiSnips
"-----------------------------------------------------------------
" 由于 UltiSnips 需要 python3 支持，而 MacVim 不支持，先停用 
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" 冲突的时候选择这个  let g:UltiSnipsExpandTrigger = "<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" " 在$USERPROFILE/.vim/UltiSnips目录下面建立自有的snippets
" let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"

" " The default value for g:UltiSnipsJumpBackwardTrigger interferes with the
" " built-in complete function: |i_CTRL-X_CTRL-K|. A workaround is to add the
" " following to your vimrc file or switching to a plugin like Supertab or
" " YouCompleteMe. >
" inoremap <c-x><c-k> <c-x><c-k>

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


" vim-xkbswitch: 自动切换输入法
"-----------------------------------------------------------------
" let g:XkbSwitchEnabled = 1
" let g:XkbSwitchIMappings   = ['cn']
" let g:XkbSwitchIMappingsTr = {'cn': {'<': '', '>': ''}}

