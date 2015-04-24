" Super minimal, all I can stands.

" General
set encoding=utf-8
set showmode
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set number
set cursorline

" Colors
syntax on
colorscheme ron

" Tabs v. Spaces
set list
set listchars=tab:▸\ ,eol:¬\,trail:·

"no backup or swap files
set nobackup
set nowritebackup
set noswapfile

" search
set hlsearch
set incsearch
set wrapscan
set ignorecase
set smartcase

" Status line
set laststatus=2
set statusline=%F    " Path
set statusline+=%m   " Modified
set statusline+=%=   " Right
set statusline+=\ %l\/%L\ \/\/\ %03c " Current/Total Lines // Char, padded

" Tabs in php and makefiles
autocmd FileType php setlocal noexpandtab
autocmd FileType make setlocal noexpandtab

" A few mappings
let mapleader=','
set pastetoggle=<leader>p

nnoremap <silent><leader><space> :noh<cr>
nnoremap <silent><leader>l :set list!<cr>
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>w <C-w><C-w>
nnoremap <silent><leader>q :q<cr>

nnoremap <tab> %
vnoremap <tab> %
