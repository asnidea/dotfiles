set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " 如果在windows下使用的话，设置为 
 set rtp+=$HOME/.vim/bundle/vundle/
 call vundle#rc()

" Windows
" if has('win32') || has('win64')
    " set shellslash
" endif

" 不设置的话会报错“ fatal: could not create leading directories”
set noshellslash
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Vundle                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

" My Bundles here:


" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'

" snipmate
" Bundle 'SirVer/ultisnips'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'


" git
Bundle 'tpope/vim-fugitive'

Bundle 'vim-scripts/ZoomWin'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'fholgado/minibufexpl.vim'
" vim-easymotion用全新的方式在文档中高效的移动光标
Bundle 'Lokaltog/vim-easymotion'	
Bundle 'jiangmiao/auto-pairs'
Bundle 'junegunn/vim-easy-align'
Bundle 'nathanaelkane/vim-indent-guides'

"taglist
Bundle 'majutsushi/tagbar'
"nerd
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
"ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails.git'
Bundle 'taq/vim-rspec.git'
" Langs
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'skammer/vim-css-color'
Bundle 'mmalecki/vim-node.js'
Bundle 'hallison/vim-markdown'
Bundle 'tangledhelix/vim-octopress'

" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称

" Bundle 'taglist.vim'
" Bundle 'surround.vim'
" Bundle 'ack.vim'

" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" ...

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                按键设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 如果前面有behave mswin，则以下3项可以忽略
" 把 CTRL-S 映射为保存 
"imap <C-S> <C-C>:w<CR>  

"ctr+c
"vnoremap <C-C> "+y

"ctr+v
"inoremap <C-V> <ESC>"+gPi

"把esc映射为jj
inoremap jj <ESC>

"把leaderkey改为，按起来更方便
let mapleader=","

" 修改vimrc配置文件
nmap <leader>vc :tabedit $MYVIMRC<CR>
nmap <leader>e :edit $MYVIMRC<CR>
 
" 配置文件
autocmd bufwritepost _vimrc source $MYVIMRC

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                常用设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" required!
filetype off   
 " required! 
filetype plugin indent on    

" 设置文件编码检测类型及支持格式 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set encoding=utf-8
set fileencodings=utf-8,GB2312,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"字体设置-雅黑

"if has("gui_running") "如果在 GUI 环境下运行则设置下面语句 
if has("gui_running") "如果在 GUI 环境下运行则设置下面语句 
	set guifont=YaHei_Consolas_Hybrid:h14 
endif 
	

" 设置开启语法高亮  
syntax on  


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


" 设定文件浏览器目录为当前目录  
set bsdir=buffer 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 保存全局变量
set viminfo+=!

" tab宽度  
set tabstop=4  
set cindent shiftwidth=4  
set autoindent shiftwidth=4  
set smarttab


"不生成备份文件
set noswapfile

"显示行号  
set number
set nospell
set linebreak
set showbreak=...
set nowrap
set hlsearch

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                显示设定                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 总是显示状态行
set laststatus=2
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=[%n]%<%f%y%h%m%r%=[%b\ 0x%B]\ %l\ of\ %L,%c%V\ Page\ %N\ %P

""我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
""状态栏设置:文件路径、文件名、标记、文件类型、字符编码、文件格式、当前位置、当前相对位置、文件总行数、日期、星期
""set statusline=%F\ %h%1*%m%r%w%0*[%{strlen(&filetype)?&filetype:'none'},%{&encoding},%{&fileformat}]%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]\ \ \ "%{strftime('%y-%m-%d\ %A')} 


"在编辑过程中，在右下角显示光标位置的状态行
    set ruler   
    set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 打开文件时，总是跳到退出之前的光标处
"autocmd BufReadPost *
"\ if line("'\"") > 0 && line("'\"") <= line("$") |
"\   exe "normal! g`\"" |
"\ endif



if has("gui_running")  
	"" 高亮鼠标位置
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


" Default color scheme
color desert


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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin - NERD_commenter.vim 注释代码用的
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释
" 注：count参数可选，无则默认为选中行或当前行

let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看

" Command-/ to toggle comments
" map <C-/> <plug>NERDComToggleComment<CR>
" imap <C-/> <Esc><plug>NERDComToggleComment<CR>i

map <leader>/ <plug>NERDCommenterToggle
map <M-/> <plug>NERDCommenterToggle
imap <M-/> <Esc><plug>NERDCommenterToggle i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
map <F12> :!ctags <CR> <CR> :!cscope -Rbq<CR><CR>
set tags=tags; 
"这个分号是不可以缺省的

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
" nnoremap <silent> <F7> :TagbarToggle<CR> 
nmap <F8> :TagbarToggle<CR>
" set focus to TagBar when opening it
let g:tagbar_autofocus = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置SuperTab 
let g:SuperTabRetainCompletionType="context" 


" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp

let g:ctrlp_map = ',,'
" 设置忽略的文件和目录

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|log|jpg|png|jpeg)$',
  \ }



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Function                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffexpr=MyDiff()
"请注意在每个“function”之后都用了一个“!”（“:help E122”）：这也是为了方便调试
"让“source ~/.vimrc”能正确运行而不会报告函数已定义的错误。
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction



