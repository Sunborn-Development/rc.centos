set nocompatible     " be iMproved

"------------------------------------------------------------------
" NeoBundle
"------------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/vimfiler'
"NeoBundle 'Shougo/vimshell'

"NeoBundle 'mattn/webapi-vim'
"NeoBundle 'mattn/gist-vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'

NeoBundle 'LustyExplorer'
"NeoBundle 'yanktmp.vim'
NeoBundle 'surround.vim'
NeoBundle 'The-NERD-Commenter'
NeoBundle 'ruby-matchit'
"NeoBundle 'AutoComplPop'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'

NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'othree/html5.vim'
"NeoBundle 'taichouchou2/vim-javascript' " JavaScriptシンタックス

NeoBundle 'taichouchou2/html5.vim' " HTML5シンタックス
"NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'cakebaker/scss-syntax.vim' " Sassシンタックス
"NeoBundle 'StanAngeloff/php.vim' " PHPシンタックス

"NeoBundle 'teramako/jscomplete-vim'

NeoBundle 'tpope/vim-markdown'

NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'


filetype plugin indent on     " Required!
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" Installation check.
NeoBundleCheck

"------------------------------------------------------------------
" view
"------------------------------------------------------------------
syntax on
set autoread
set number
set ruler
set wrap
set title
set cursorline
set scrolloff=5
set wildmenu
set laststatus=2
set showcmd
set cmdheight=2
set statusline=%F\ %m%=%{(&fenc!=''?&fenc:&enc).':'.&ff}%{(&list?'>':'')}\ %l-%v\ %p%%\ [%02B]

set foldmethod=manual

"let g:hybrid_use_Xresources = 1
colorscheme hybrid
"colorscheme jellybeans

"------------------------------------------------------------------
" file
"------------------------------------------------------------------
" 変更中のファイルを保存せずに他のファイルを見れるようにする
set hidden
" 外部のエディタで編集中のファイルが変更されたら、自動的に読み直す
set autoread

"------------------------------------------------------------------
" tab
"------------------------------------------------------------------
set expandtab smarttab
set tabstop=2 softtabstop=2 shiftwidth=2

"------------------------------------------------------------------
" edit
"------------------------------------------------------------------
set autoindent smartindent
set backspace=indent,eol,start
set showmatch
" カレントディレクトリを自動的に変更
set autochdir
" バックスラッシュをスラッシュに置き換え
set shellslash
set list
set listchars=tab:^\ ,trail:~
set iskeyword+=-,!,?
set iskeyword-=_
set indentkeys-=0#"

"------------------------------------------------------------------
" backup
"------------------------------------------------------------------
set nobackup
set noswapfile

"------------------------------------------------------------------
" register
"------------------------------------------------------------------
set clipboard+=unnamed
set clipboard+=autoselect

"------------------------------------------------------------------
" encoding
"------------------------------------------------------------------
" 内部エンコーディング　バッファ・レジスタ
"set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp-2,euc-jisx0213,euc-jp,cp932

if &encoding == 'utf-8'
  set ambiwidth=double
endif

" ただし、下記ファイルタイプのファイルはなにがなんでもutf-8でお願いします＞＜
" autocmd FileType php :set fileencoding=utf-8
autocmd FileType js :set fileencoding=utf-8
autocmd FileType css :set fileencoding=utf-8
autocmd FileType html :set fileencoding=utf-8
autocmd FileType xml :set fileencoding=utf-8
autocmd FileType ruby :set fileencoding=utf-8
autocmd FileType php :set fileencoding=utf-8

"--------------------------------------------------------------------
" Hilighting
"--------------------------------------------------------------------
autocmd BufNewFile,BufRead /private/etc/apache2/*/*.conf* set filetype=apache

"--------------------------------------------------------------------
" key mapping
"--------------------------------------------------------------------

" [Default]
" C-A 数値の加算
" C-X 数値の減産
" 
" C-U scrollオプションで指定されている行数だけ上へ移動する
" C-D scrollオプションで指定されている行数だけ下へ移動する
"
" C-B 指定されたページ数だけ上へ移動
" C-F 指定されたページ数だけ下へ移動
"
" C-Y 指定行数上へ移動 カーソルはそのまま
" C-E 指定行数下へ移動 カーソルはそのまま

" C-P 指定された行数だけ上へ移動 kと同じ
" C-N 指定された行数だけ下へ移動 jと同じ
"
" C-H 左に移動　backspaceオプションで挙動を変更できる
" C-J jと同じ
" C-K hと同じ
"
" C-G カレントファイルとそのファイル内のカーソル位置を表示する
" C-R リドゥ
" C-V ヴィジュアルモード
" C-W ウィンドウ
" C-Z サスペンド

" C-I ジャンプリスト? <TAB>と同じ
" C-S ターミナル
" C-Q ターミナル
" C-T タグ?
" C-L ?
" C-C 割り込み検索？
" C-O ?
" C-M <CR>をコピーする

" [再割り当て]

map <C-H> <NUL>


" 必要外
nnoremap <C-H> <Nop>
nnoremap <C-J> <Nop>
nnoremap <C-K> <Nop>
nnoremap <C-G> <Nop>
nnoremap <C-Z> <Nop>
nnoremap <C-I> <Nop>
nnoremap <C-S> <Nop>
nnoremap <C-Q> <Nop>
nnoremap <C-T> <Nop>
nnoremap <C-L> <Nop>
nnoremap <C-C> <Nop>
nnoremap <C-O> <Nop>
nnoremap <C-M> <Nop>
nnoremap ZZ <Nop>


" cursor
nnoremap j gj
nnoremap k gk
nnoremap w 4l
"nnoremap <C-J> L4j
"nnoremap <C-K> H4k
nnoremap <C-J> 4<C-E> 4j
nnoremap <C-K> 4<C-Y> 4k
nnoremap z 0
nnoremap . $
" shortcut

nnoremap <CR> <CR>

"------------------
" Visual mode
"------------------
vnoremap v $h
vnoremap . $h
vnoremap a <Esc>ggvG
vnoremap w 8l
vnoremap <C-j> 4j
vnoremap <C-k> 4k


"------------------
"  hortcut
"-----------------


" save
nnoremap ;w <ESC>:w<CR>
inoremap ;w <ESC>:w<CR>

" quit
" noremap ;q <ESC>:q!<CR>

" edit and reflection vimrc
nnoremap <Space>. :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>s. :<C-u>source $MYVIMRC<CR>
nnoremap <Space>z. :<C-u>edit $HOME/.zshrc<CR>
nnoremap <Space>sz. :<C-u>!source $HOME/.zshrc<CR>

" buffer control
" 使わないなこれ
"nnoremap <C-P> <ESC>:bp<CR>
"nnoremap <C-N> <ESC>:bn<CR>
nnoremap <C-D> <ESC>:bdelete<CR>

"window control
nnoremap <C-C> <ESC>:close<CR>
nnoremap ;s <ESC>:split<CR>
nnoremap ;v <ESC>:vsplit<CR>
nnoremap <C-g>h <ESC>:vertical resize -6<CR>
nnoremap <C-g>l <ESC>:vertical resize +6<CR>
nnoremap <C-g>k <ESC>:resize -6<CR>
nnoremap <C-g>j <ESC>:resize +6<CR>


" Quick Fix
nnoremap q <Nop>
nnoremap qo :copen<CR>
nnoremap qc :cclose<CR>

highlight Folded ctermfg=2 ctermbg=8
vnoremap zz :fold<CR>
vnoremap zo :foldopen!<CR>



" copy and paste 
"vmap <C-C> "+y
"imap <C-V> <ESC>"*pa
">vm>ap <C-V> d"*P
"cmap <C-V> <C-R>*
"vmap <C-X> "*d<ESC>

"------------------
" insert mode 
"------------------
inoremap <ESC> <ESC>l
inoremap <C-S> <Nop>
inoremap <C-J> <DOWN>
inoremap <C-K> <UP>
inoremap <C-L> <RIGHT>
inoremap <C-h> <LEFT>

inoremap <C-D> <ESC>xa
inoremap ;d <ESC>Da
inoremap ;a <ESC>A
inoremap ;b <ESC>d0i


"time stamp
inoremap ;t <C-R>=strftime("(%H:%M)", localtime())<CR>

" ruby arrow
inoremap ;> =>
inoremap ;< <%= %>

" php begin
inoremap ;? <?php ?>
inoremap ;do do<CR>end<ESC>O


" Editing a protected file as 'sudo' for sudo
"cmap W w !sudo tee % >/dev/null<CR>


"------------------------------------------------------------------
" plugins
"------------------------------------------------------------------

"""""""""""""""""""""""""""""
" fugitive.vim
"""""""""""""""""""""""""""""
nnoremap <silent> gs :Gstatus<CR>
nnoremap <silent> gg :Ggrep<CR>
nnoremap <silent> gd :Gdiff<CR>
nnoremap <silent> gb :Gblame<CR>
nnoremap <silent> gw :Gwrite<CR>
nnoremap <silent> gc :Gcommit<CR>

"nnoremap <silent> gv :Gitv<CR>


"""""""""""""""""""""""""""""
" unite.vim
"""""""""""""""""""""""""""""
"nnoremap [unite] <Nop>
"nmap <C-u> [unite]

"nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>
"nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer<CR>
"nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark<CR>

"let g:unite_enable_start_insert = 1

"nnoremap <silent> <C-l> :<C-u>Unite buffer<CR>
"nnoremap <silent> <C-O> :<C-u>UniteWithBufferDir file -buffer-name=files<CR>
"nnoremap <silent> <C-p> :<C-u>Unite file_mru<CR>

"""""""""""""""""""""""""""""
" vimfiler
"""""""""""""""""""""""""""""
"let g:vimfiler_safe_mode_by_default = 0
"nnoremap ;f :VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
"autocmd FileType vimfiler nnoremap <buffer><silent>/ :<C-u>Unite file -default-action=vimfiler<CR>


"""""""""""""""""""""""""""""
" gist.vim
"""""""""""""""""""""""""""""
"let g:gist_show_privates = 1
"let g:gist post private = 1

"""""""""""""""""""""""""""""
" previm
"""""""""""""""""""""""""""""
"g:previm_open_cmd 'open -e Safari'

"""""""""""""""""""""""""""""
" GitGutter
"""""""""""""""""""""""""""""
nnoremap <silent> ;gt :GitGutterToggle<CR>

"""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"""""""""""""""""""""""""""""
" Lusty Explorer
"""""""""""""""""""""""""""""
nnoremap <silent> <C-L> :LustyBufferExplorer<CR>
nnoremap <silent> <C-O> :LustyFilesystemExplorer<CR>

""""""""""""""""""""""""""""""
" surround.vim for HTML
""""""""""""""""""""""""""""""
" insert mode <C-G> s hoge
" [key map]
" 1 : <h1>|</h1>
" 2 : <h2>|</h2>
" 3 : <h3>|</h3>
" 4 : <h4>|</h4>
" 5 : <h5>|</h5>
" 6 : <h6>|</h6>
"
" p : <p>|</p>
" u : <ul>|</ul>
" o : <ol>|</ol>
" l : <li>|</li>
" a : <a href="">|</a>
" A : <a href="|"></a>
" i : <img src="|" alt="" />
" I : <img src="" alt"|" />
" d : <div>|</div>
" D : <div class="section">|</div>
" s :
" S : <script type="text/javascript">|</script>


autocmd FileType html,eruby,php let b:surround_49  = "<h1>\r</h1>"
autocmd FileType html,eruby,php let b:surround_50  = "<h2>\r</h2>"
autocmd FileType html,eruby,php let b:surround_51  = "<h3>\r</h3>"
autocmd FileType html,eruby,php let b:surround_52  = "<h4>\r</h4>"
autocmd FileType html,eruby,php let b:surround_53  = "<h5>\r</h5>"
autocmd FileType html,eruby,php let b:surround_54  = "<h6>\r</h6>"

autocmd FileType html,eruby,php let b:surround_112 = "<p>\r</p>"
autocmd FileType html,eruby,php let b:surround_117 = "<ul>\r</ul>"
autocmd FileType html,eruby,php let b:surround_111 = "<ol>\r</ol>"
autocmd FileType html,eruby,php let b:surround_108 = "<li>\r</li>"
autocmd FileType html,eruby,php let b:surround_97  = "<a href=\"\">\r</a>"
autocmd FileType html,eruby,php let b:surround_65  = "<a href=\"\r\"></a>"
autocmd FileType html,eruby,php let b:surround_105 = "<img src=\"\r\" alt=\"\" />"
autocmd FileType html,eruby,php let b:surround_73  = "<input \rtype=\"\" name=\"\" value=\"\" />"
autocmd FileType html,eruby,php let b:surround_100 = "<div>\r</div>"
autocmd FileType html,eruby,php let b:surround_68  = "<div \rid=\"\" class=\"\"></div>"
autocmd FileType html,eruby,php let b:surround_83  = "<script type=\"text\/javascript\">\r</script>"
autocmd FileType html,eruby,php let b:surround_115 = "<style type=\"text\/css\">\r</style>"

""""""""""""""""""""""""""""""
" yankring.vim
""""""""""""""""""""""""""""""
"let g:yankring_n_keys = 'Y D'
"let g:yankring_replace_n_nkey = '<C-:>'
"let g:yankring_replace_n_pkey = ';p'

""""""""""""""""""""""""""""""
" yanktmpr.vim
""""""""""""""""""""""""""""""
vnoremap <silent> sy :call YanktmpYank()<CR>
nnoremap <silent> sp :call YanktmpPaste_p()<CR>
nnoremap <silent> sP :call YanktmpPaste_P()<CR>


""""""""""""""""""""""""""""""
" NERD COMMENTER
""""""""""""""""""""""""""""""
"nmap ;cc <plug>NERDCommenterComment
"vmap ;cc <plug>NERDCommenterComment
nmap ;c <plug>NERDCommenterToggle
vmap ;c <plug>NERDCommenterToggle

nmap ;d <Nop>
vmap ;d <Nop>

""""""""""""""""""""""""""""""
" Neocomplcache
""""""""""""""""""""""""""""""

" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
"
"
"
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_max_list = 20

inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

""""""""""""""""""""""""""""""
" vim-javascript-syntax
""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()

""""""""""""""""""""""""""""""
" jscomplete-vim
""""""""""""""""""""""""""""""
autocmd FileType javascript
  \ :setl omnifunc=jscomplete#CompleteJS
let g:jscomplete_use = ['dom', 'moz', 'es6th']


""""""""""""""""""""""""""""""
" vim-markdown
""""""""""""""""""""""""""""""
"let g:vim_markdown_folding_disabled=1
"let g:vim_markdown_no_default_key_mappings=1

au BufRead,BufNewFile *.md set filetype=markdown

"------------------------------------------------------------------
" templates
"------------------------------------------------------------------
autocmd BufNewFile *.html 0r ~/.vim/templates/skel.html

"------------------------------------------------------------------
" functions
"------------------------------------------------------------------
""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
if has('syntax')
  syntax on
  augroup InsertHook
  autocmd!
  autocmd InsertEnter * highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=black ctermbg=green cterm=none
  autocmd InsertLeave * highlight StatusLine guifg=darkblue guibg=darkgrey gui=none ctermfg=black ctermbg=grey cterm=none
  augroup END
endif

""""""""""""""""""""""""""""""
"ファイルを開いたら前回のカーソル位置へ移動
""""""""""""""""""""""""""""""
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line('$') |
    \   exe "normal! g`\"" |
    \ endif
augroup END


source $VIMRUNTIME/macros/matchit.vim
"let b:match_words = '<:>,<div.*>:</div>'
