set nocompatible		" be iMproved, required
filetype off			" required
syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'severin-lemaignan/vim-minimap'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()		"required
filetype plugin indent on	"required
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" 
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" enable mouse
:set mouse=a
" enable lines numbers
:set number
" set tab == 2 spaces
:set tabstop=2
" select all
:map <C-a> <esc>ggVG<CR>
" exit to normal mode
:imap jj <Esc> 
:vmap jj <Esc> 
" toggle nerd tree
:nnoremap ff :NERDTreeToggle<CR> 

if v:progname =~? "gvim"
:colo slate 
"  autocmd VimEnter *  Minimap
endif

" autocmd VimEnter * NERDTree

" os clipboard
:set pastetoggle=<F2>
:set clipboard=unnamed

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"status bar
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'

:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d
