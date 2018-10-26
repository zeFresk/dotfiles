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
Plugin 'tpope/vim-fugitive' " Git helper
""Plugin 'Valloric/YouCompleteMe' " Enhanced completion
Plugin 'scrooloose/nerdcommenter' " No comments needed LMAO... :'(
Plugin 'scrooloose/syntastic' " Check for syntax errors at runtime
Plugin 'Chiel92/vim-autoformat' " Add clang autoformat, very handy !
Plugin 'airblade/vim-gitgutter' " For easy git diff

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

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' " Default ycm file from JDevlieghere



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
set ttyfast 	" no slowing down when scrolling
set incsearch

set encoding=utf-8
set fillchars+=vert:│
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" ################
" #### Themes ####
" ################

color molokai

" #############
" ## Mapping ##
" #############
let mapleader=","

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" tabs
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew<CR>

" Autoformat
noremap <F3> :Autoformat<CR>

" I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Easymotion bindings
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Insert line without quitting normal mode
nmap <Leader>l o<ESC>k
nmap <Leader>L O<ESC>j

" NERDTree
nmap <leader>o <ESC>:NERDTreeToggle<CR><C-w>w
