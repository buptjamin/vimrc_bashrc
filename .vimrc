" update time: 2017年 05月 09日 星期二 19:44:04 CST




"*********************************************************
"                  vundle 配置                           *
"*********************************************************
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'

Plugin 'vim-scripts/cscope.vim'


Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

"Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plugin 'ryanoasis/vim-devicons'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/STL-Syntax'

"for code alignment
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" instant preview of markdown file
Plugin 'suan/vim-instant-markdown'

"自动补全单引号，双引号等
Plugin 'Raimondi/delimitMate'

"快速跳转到TODO列表, 查看并快速跳转到代码中的TODO列表。重构代码时一般通读,标记修改位置,非常实用
Plugin 'vim-scripts/TaskList.vim'

Plugin 'rkulla/pydiction'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'vim-scripts/c.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'taglist.vim'
Plugin 'Syntastic'
Plugin 'L9'
Plugin 'FuzzyFinder'

" switch between *.h *.c[pp]
Plugin 'buptjamin/a.vim'

"Plugin 'rdnetto/YCM-Generator'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"code comment: gc gcap(go comment a paragraph)  gc5j(go comment 5 line(j) )
Plugin 'tomtom/tcomment_vim'

" gs/gsip(go sort inside paragraph)
Plugin 'christoomey/vim-sort-motion'

" griw(goreplace inner word) replace operation
Plugin 'vim-scripts/ReplaceWithRegister'

" daa(delete an argument of a function call) ci$(to change content between $)
" di"(delete inside quotes)
Plugin 'wellle/targets.vim'

" <ii(left-shift inside indent)   operation for indent
Plugin 'michaeljsmith/vim-indent-object'

" cs"'( use ' to replace " between certain content.) operation for surrounds
Plugin 'tpope/vim-surround'

"快速插入代码片段
Plugin 'SirVer/ultisnips'

Plugin 'tpope/vim-repeat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"finished plugin add.(vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间)




"********************************************************
"                   一般性配置                          *
"********************************************************



" 定义快捷键的前缀，即 <Leader>
let mapleader="s"
""leader映射为逗号“，”
"let mapleader = ","  

" vim 自身（非插件）快捷键

" 定义快捷键到行首和行尾
"nmap LB 0
"nmap LE $
"设置在vim中可以使用鼠标
"set mouse=a
" 禁用鼠标
set mouse-=a


" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

" 设置快捷键遍历子窗口
" 依次遍历
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j


" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" <<

" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch


" 关闭兼容模式
"set nocompatible

" vim 自身命令行模式智能补全
set wildmenu


" <<<<
" 配色方案
"set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
"colorscheme desert


" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2


" 开启行号显示
set number

"" 高亮显示当前行/列
"set cursorline
"set cursorcolumn

" hight light cursor on function
fun! HightlightCurrentCursor()
    set cursorline
    set cursorcolumn
endf
nmap <Leader>hc :call HightlightCurrentCursor()<CR>

" hight light cursor off function
fun! CloseCurrentCursor()
    set nocursorline
    set nocursorcolumn
endf
nmap <Leader>nc :call CloseCurrentCursor()<CR>

" 高亮显示搜索结果
set hlsearch


" 设置 gvim 显示字体
set guifont=Ubuntu\ Mono\ Regular\ 12


" 禁止折行
" set nowrap
set wrap

" 语法分析
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"设置在编辑过程中右下角显示光标的行列信息
set ruler

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=6000

"设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile

"设置匹配模式
set showmatch

"设置C/C++方式自动对齐
set autoindent
" setting c indent
set cindent


"指定配色方案为256色
"set t_Co=256

"设置搜索时忽略大小写
"set ignorecase

"配置backspace的工作方式
set backspace=indent,eol,start


"设置退格键时可以删除4个空格
set smarttab

"设置编码方式
set encoding=utf-8

"自动判断编码时 依次尝试以下编码
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" >>
" 环境恢复

" 设置环境保存项
set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" 保存 undo 历史。必须先行创建 .undo_history/
set undodir=~/.undo_history/
set undofile

"undo in buffer works too.
"this is important for buffer file switch.
set hidden  "default:off
nmap <Leader>bs :wa<CR>



"=============================================================="
"================= function zone =============================="
"=============================================================="

"python auto add head command 
function! HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "# Pw @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endfunction
autocmd bufnewfile *.py call HeaderPython()

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
"" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()

" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" <<




"=============================================================="
"================= zone: later added non-plugin tools=========="
"=============================================================="

" 从上次编辑位置打开
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif





"=============================================================="
"================= plugin setting here ========================"
"=============================================================="

let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'


"*****************************************************
"                   taglist配置                      *
"*****************************************************

"不显示"press F1 to display help"
let Tlist_Compact_Format=1

"窗口在左侧显示
let Tlist_Use_Right_Window=0
let Tlist_Use_left_Window=1

"只显示当前文件的tags
let Tlist_Show_One_File=1  

"高亮显示
let Tlist_Auto_Highlight_tag=1

"随文件自动更新
let Tlist_Auto_Update=1

"设置宽度
let Tlist_WinWidth=48

"taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1 

"单击跳转
let Tlist_Use_SingClick=1

"打开关闭快捷键
"nnoremap <silent> <F8> :TlistToggle<CR>





"Plugin configuration here
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
"Highlight folders using exact match
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" set g:NERDTreeExtensionHighlightColor if you want a custom color instead of the default one
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'cpp', 'h'] " enable highlight to .hbs and .lhs files with default colors

"自动补全单引号，双引号等
" for python docstring ",优化输入
au FileType python let b:delimitMate_nesting_quotes = ['"']

"for code alignment
" \bb                 按=号对齐代码 [Tabular插件]
nmap <leader>bb :Tab /=<CR>
" \bn                 自定义对齐    [Tabular插件]
nmap <leader>bn :Tab /

"快速跳转到TODO列表, 查看并快速跳转到代码中的TODO列表。重构代码时一般通读,标记修改位置,非常实用
map <leader>td <Plug>TaskList

" instant preview of markdown file
let g:instant_markdown_slow = 1



" instant preview of markdown file
let g:instant_markdown_slow = 1

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" 接口与实现快速切换

" *.cpp 和 *.h 间切换
"nmap <silent> <Leader>sw :FSHere<cr>
"nmap <F4> :FSHere<CR>
nmap <F4> :HA<CR>

nmap <leader>lo :diffg LO<CR>
nmap <leader>re :diffg RE<CR>
nmap <leader>ba :diffg BA<CR>


" 自定义 vim-signature 快捷键
let g:SignatureMap = {
            \ 'Leader'             :  "m",
            \ 'PlaceNextMark'      :  "m,",
            \ 'ToggleMarkAtLine'   :  "m.",
            \ 'PurgeMarksAtLine'   :  "m-",
            \ 'DeleteMark'         :  "dm",
            \ 'PurgeMarks'         :  "mda",
            \ 'PurgeMarkers'       :  "m<BS>",
            \ 'GotoNextLineAlpha'  :  "']",
            \ 'GotoPrevLineAlpha'  :  "'[",
            \ 'GotoNextSpotAlpha'  :  "`]",
            \ 'GotoPrevSpotAlpha'  :  "`[",
            \ 'GotoNextLineByPos'  :  "]'",
            \ 'GotoPrevLineByPos'  :  "['",
            \ 'GotoNextSpotByPos'  :  "mn",
            \ 'GotoPrevSpotByPos'  :  "mp",
            \ 'GotoNextMarker'     :  "[+",
            \ 'GotoPrevMarker'     :  "[-",
            \ 'GotoNextMarkerAny'  :  "]=",
            \ 'GotoPrevMarkerAny'  :  "[=",
            \ 'ListLocalMarks'     :  "ms",
            \ 'ListLocalMarkers'   :  "m?"
            \ }

" <<

" >>
" 标签列表

" 设置 tagbar 子窗口的位置出现在主编辑区的左边
"let tagbar_left=0
let tagbar_right=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nmap <Leader>tl :TagbarToggle<CR>
nmap <silent> <F8> :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=35
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
            \ 'ctagstype' : 'c++',
            \ 'kinds'     : [
            \ 'c:classes:0:1',
            \ 'd:macros:0:1',
            \ 'e:enumerators:0:0', 
            \ 'f:functions:0:1',
            \ 'g:enumeration:0:1',
            \ 'l:local:0:1',
            \ 'm:members:0:1',
            \ 'n:namespaces:0:1',
            \ 'p:functions_prototypes:0:1',
            \ 's:structs:0:1',
            \ 't:typedefs:0:1',
            \ 'u:unions:0:1',
            \ 'v:global:0:1',
            \ 'x:external:0:1'
            \ ],
            \ 'sro'        : '::',
            \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'n' : 'namespace',
            \ 'c' : 'class',
            \ 's' : 'struct',
            \ 'u' : 'union'
            \ },
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'namespace' : 'n',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u'
            \ }
            \ }

" <<

" >>
" 代码导航

" 基于标签的代码导航

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 基于语义的代码导航


" <<

" >>
" 查找

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>


"Plugin 'vim-scripts/cscope.vim' "settings.
" s: Find this C symbol 
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR> 
" g: Find this definition 
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR> 
" d: Find functions called by this function 
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR> 
" c: Find functions calling this function 
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR> 
" t: Find this text string 
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR> 
" e: Find this egrep pattern 
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR> 
" f: Find this file 
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR> 
" i: Find files #including this file 
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR> 
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
let g:cscope_silent = 1



au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$")+1, a:maxheight]), a:minheight]) . "wincmd _"
endfunction



" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
"let g:UltiSnipsExpandTrigger="<leader><tab>"
"let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
"let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"定义存放代码片段的文件夹 .vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
"let g:UltiSnipsSnippetDirectories=["snippets", "bundle/ultisnips/UltiSnips"]



" >>
" YCM 补全

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900



"" 引入 C++ 标准库 tags
"set tags=tags;  " ; 不可省略，表示若当前目录中不存在tags， 则在父目录中寻找。
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"set tags+=/data/misc/software/app/vim/stdcpp.tags
"set tags+=/data/misc/software/app/vim/sys.tags
"set tags+=/home/jamin/.vim/tag/JTAGS_usr_include.tags
"set tags+=/usr/include/JTAGS_usr_include_all.tags

" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.', '::'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
            \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }
" ################### 自动补全 ###################

" 代码自动补全
"迄今为止用到的最好的自动VIM自动补全插件
"重启 :YcmRestartServer
"youcompleteme  默认tab  s-tab 和自动补全冲突
" YouCompleteMe
" YouCompleteMe settings     [JSettings]
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_confirm_extra_conf=0                                " 开启 YCM 标签补全引擎
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 0:use gcc syntastic checkers 1:use clang
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项
let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
" for ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F2> :YcmDiags<CR>

" 跳转到定义处, 分屏打开
"let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
"nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
""按,jd 会跳转到定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   

" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
" old version
if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
endif
" new version
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif




" 由接口快速生成实现框架

" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=1

" 库信息参考

" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim

" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" 工程文件浏览

"********************************************************
"                      NERD_Tree 配置                   *
"********************************************************
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"autocmd vimenter * NERDTree



"显示增强
let g:NERDChristmasTree=1

"自动调整焦点
let g:NERDTreeAutoCenter=1

"鼠标模式:目录单击,文件双击
let g:NERDTreeMouseMode=2

"打开文件后自动关闭
"let g:NERDTreeQuitOnOpen=1

"显示文件
let g:NERDTreeShowFiles=1

"显示隐藏文件
let g:NERDTreeShowHidden=1

"高亮显示当前文件或目录
let g:NERDTreeHightCursorline=1

"显示行号
let g:NERDTreeShowLineNumbers=1

"窗口位置
"let g:NERDTreeWinPos='right'
let g:NERDTreeWinPos ="left"

"窗口宽度
let g:NERDTreeWinSize=38

"不显示'Bookmarks' label 'Press ? for help'
let g:NERDTreeMinimalUI=1

let g:NERDTreeDirArrows = 1



"快捷键
nnoremap <silent> <F7> :NERDTreeToggle<CR>


nmap <Leader>fl :NERDTreeToggle<CR>
" 删除文件时自动删除文件对应 buffer
let g:NERDTreeAutoDeleteBuffer=1

" <<

" >>
" 多文档编辑

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>mbe :MBEToggle<cr>

" buffer 切换快捷键
map <S-Left> :MBEbp<CR>
map <S-Right> :MBEbn<CR>

" <<


" 保存快捷键
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>ss :mksession! my.vim<cr>

" 恢复快捷键
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <leader>rs :source my.vim<cr>

" <<

" 设置快捷键实现一键编译及运行
nmap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
nmap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>

" >>
" 快速选中结对符内的文本

" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" <<

" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>


"suan/vim-instant-markdown
"let g:instant_markdown_slow = 1


"Doxygen vim configuration

let g:DoxygenToolkit_briefTag_pre="@Name: "
let g:DoxygenToolkit_commentType = "Python"
let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="Jamin(metoak)" 
let g:DoxygenToolkit_licenseTag="Jamin License"

let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1


"自动排版
map <F3> gg=G
"插入块注释
vmap <F9> dO*/<Esc>PO/*<Esc>
"插入条件编译注释
vmap <F10> dO#endif<Esc>PO#if 0<Esc>
"F1自动在当前位置插入日期
map <C-t> AAdded by Jamin. <Esc>A<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
"添加函数头注释
map <F12> <Esc>:Dox<cr>




Plugin 'klen/python-mode'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'


let g:ycm_python_binary_path = '/usr/bin/python'


" for error: g:ycm_server_python_interpreter
" g:ycm_server_python_interpreter=/usr/bin/python
let g:ycm_server_python_interpreter = '/usr/bin/python'


"From [Things about vim I wish I knew earlier]
" set relativenumber
"better j/k
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')









"*****************************************************
"           YouCompleteMe配置                        *
"*****************************************************




"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1 

"*****************************************************
"           Syntastic配置                            *
"*****************************************************


let g:Syntastic_check_on_open=1


"ctags"
"========================="
set tags+=~/.vim/tag/systags
"========================="
"set tags+=/usr/include/basic.tags
set tags+=/home/jamin/Downloads/opencv-2.4.13.2/JTAGS_opencv_2.4.13.tags


"ctags"
"========================="
"set tags+=~/.vim/tag/systags
"========================="

"ctags" L 
"========================="
set tags+=~/.vim/tag/systags.tags
"========================="
set tags+=/usr/include/JTAGS_usr_include_all.tags
