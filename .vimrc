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
Plugin 'davits/YouCompleteMe' " Enhanced completion
Plugin 'davits/DyeVim' " C++ syntax highlighting using YCM
Plugin 'scrooloose/nerdcommenter' " No comments needed LMAO... :'(
Plugin 'scrooloose/syntastic' " Check for syntax errors at runtime
Plugin 'Chiel92/vim-autoformat' " Add clang autoformat, very handy !
Plugin 'airblade/vim-gitgutter' " For easy git diff
Plugin 'vim-airline/vim-airline' " I need this to simulate tabs with buffer and for esthetics
Plugin 'vim-airline/vim-airline-themes' " Even prettier

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
let g:dyevim_timeout=50

" ################
" ## syntastic  ##
" ################
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ################
" ### Powerline###
" ################
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/


" ################
" ### air-line ###
" ################
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_theme='powerlineish'

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
no <up> ddkP
ino <down> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <up> <Nop>

"#### buffers as tabs
" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden
"
" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
"
" " Move to the next buffer
nmap <leader>l :bnext<CR>
"
" " Move to the previous buffer
nmap <leader>h :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Old shortcuts remastered with buffers
nmap <C-Tab> :bnext<CR>
nmap <C-S-Tab> :bprevious<CR>
map <C-S-Tab> :bprevious<CR>
map <C-Tab> :bnext<CR>
imap <C-S-Tab> <ESC>:bprevious<CR>
imap <C-Tab> <ESC>:bnext<CR>


"#### Autoformat
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
nmap <Leader>o o<ESC>k
nmap <Leader>O O<ESC>j

" NERDTree
nmap <leader>p <ESC>:NERDTreeToggle<CR><C-w>w

" Quick switch between modes
imap <Leader><Leader> <ESC> " Back to normal mode
