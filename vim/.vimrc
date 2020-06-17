syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgray

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable ('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-der=%s/.git ls-files -oc --executable-standard']
let loaded_matchparen = 1
let mapleader = " "
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE> #this is not working due to ripgrep not installed

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>



