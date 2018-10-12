" ################
" #### Vundle #### 
" ################
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All the plugins go here :
Plugin 'scrooloose/nerdtree' " We NEED this !!
Plugin 'easymotion/vim-easymotion' " To naviguate easily in files
Plugin 'tpope/vim-fugitive'

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



" ################
" ### Powerline###
" ################
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256


" ################
" ##### Misc #####
" ################
" Enable mouse ?
if has('mouse')		" In many terminal emulators the mouse works just fine, thus enable it.
	set mouse=a
endif


" ################
" #### General####
" ################

set number 	" show line number
set showcmd 	" show incomplete commands
set scrolloff=3	" don't let cursor touch the edge
set wildmenu 	" show all commands on second complete

set encoding=utf-8
set fillchars+=vert:│
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" ################
" #### Themes ####
" ################

color molokai

" #############
" ## Mapping ##
" #############
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>


