" zeFresk's neovim config.
" Feel free to use.
"
" Plugins START
call plug#begin(stdpath('data').'/plugged')

Plug 'Shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' , 'for': 'markdown' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'donRaphaco/neotex', { 'for': 'tex' }

Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color schemes
Plug 'sickill/vim-monokai'

" Plugins END
call plug#end()

" Coc
autocmd FileType json syntax match Comment +\/\/.\+$+

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

""" Theme
set termguicolors
colorscheme monokai
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1
set laststatus=2

""" Accessibility

if has('mouse')		" In many terminal emulators the mouse works just fine, thus enable it.
		set mouse=a
endif

set number 	" show line number
set showcmd 	" show incomplete commands
set scrolloff=3	" don't let cursor touch the edge
set wildmenu 	" show all commands on second complete
set incsearch

set encoding=utf-8
set fillchars+=vert:│
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

""" Mapping
let mapleader=","

" Unmap the arrow keys
no <down> ddp
no <up> ddkP
" ino <down> <Nop>
" ino <up> <Nop>
vno <down> <Nop>
vno <up> <Nop>

""" Buffers as tabs
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
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

""" Other shortcuts
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
