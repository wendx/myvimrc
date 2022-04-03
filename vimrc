call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/vim-scripts/c.vim.git'
Plug 'https://github.com/vim-scripts/TagHighlight.git'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/tomasr/molokai'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/rking/ag.vim'
Plug 'kshenoy/vim-signature'
Plug 'bsdelf/bufferhint'
Plug 'justinmk/vim-sneak'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
Plug 'ntpeters/vim-better-whitespace'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'dkprice/vim-easygrep'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'

" Initialize plugin system
call plug#end()
" ===================================

hi Search ctermbg=5 ctermfg=yellow
set number
set incsearch
set hlsearch
" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase
set cursorline

" key map
let mapleader=","
nmap <leader>tt :TagbarOpen<CR>
nmap <leader>t :TagbarOpenAutoClose<CR>
nmap <leader>nh :noh<CR>
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>fq :NERDTreeClose<CR>
nmap <leader>cj :cn<cr>
nmap <leader>ck :cp<cr>
nmap <leader>cw :cw 10<cr>
nmap <leader>ic :set ic<cr>
nmap <leader>nic :set noic<cr>
nmap <leader>nw <C-w>w
nmap <leader>fz :FZF<cr>
nmap <leader>ff :FZF 
nmap <leader>ft :BTags<cr>
nmap <leader>mc :MarkClear<cr>
nnoremap - :call bufferhint#Popup()<CR>
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

"repeating last command-line
map <leader>rd @:

"to use terminal in VIM, you need VIM 8.1 or later
nmap <leader>sh :vert term++close<cr>

"复制/粘贴命令：
"复制选中的内容到寄存器x
"粘贴寄存器x的内容并且移动光标到粘贴内容之后
map <leader>c "xy
map <leader>v "xgp

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

" ----------------- nerdcommenter ----------------
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_c = 1

"---------------------------- airline 设置 start------------------------------
" 显示颜色
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
" let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
" let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
"设置tab键映射"
nmap <tab> :bn<cr>
nmap <s-tab> :bp<cr>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
" ----------------------------airline 设置 end------------------------------
" ----------------- vim-auto-popmenu --------------------
" 设定需要生效的文件类型，如果是 '*' 的话，代表所有类型
let g:apc_enable_ft = {'text':1, 'markdown':1, 'c':1, 'cpp':1, 'h':1}

" 设定从字典文件以及当前打开的文件里收集补全单词，详情看 ':help cpt'
set cpt=.,k,w,b

" 不要自动选中第一个选项。
set completeopt=menu,menuone,noselect

" 禁止在下方显示一些啰嗦的提示
set shortmess+=c
" -------------------------------------------------------

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" setting for vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

"color setting for vim-signature
hi SignColumn guibg=NONE
hi SignColumn ctermbg=NONE
hi SignatureMarkText ctermbg=NONE

" setting for wildfire, selects the next closest text object
map <SPACE> <Plug>(wildfire-fuel)

set colorcolumn=81

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
