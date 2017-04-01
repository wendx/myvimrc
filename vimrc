set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
	"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
	"Plugin 'L9'
" Git plugin not hosted on GitHub
	"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
	"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
	"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
	"Plugin 'ascenator/L9', {'name': 'newL9'}
	
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/vim-scripts/c.vim.git'
Plugin 'https://github.com/vim-scripts/TagHighlight.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/altercation/vim-colors-solarized'
Plugin 'https://github.com/tomasr/molokai'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'bsdelf/bufferhint'
Plugin 'justinmk/vim-sneak'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

hi Search ctermbg=5 ctermfg=yellow
set number
set incsearch
set hlsearch
set ic
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

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

Plugin 'dkprice/vim-easygrep'

"---------------------------- airline 设置 start------------------------------
" 显示颜色
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
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

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" setting for vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

"color setting for vim-signature
hi SignColumn guibg=none
hi SignColumn ctermbg=none
hi SignatureMarkText ctermbg=none

