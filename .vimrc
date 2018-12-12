execute pathogen#infect()
syntax on
filetype plugin indent on

" basic format etc 
  imap ;; <ESC>
  set mouse=a
  set foldmethod=indent
  set foldlevel=20
  set number
  set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" airline settings 
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_tabs = 1

" leader and mode
  let mapleader = "\<space>"
  map <Leader>w :w<cr>
  nmap <Leader>q :wq!<CR> 
  map  <Leader>i :set paste<CR>i

" supertab 
  imap <tab> <c-n>

" code folding
  nmap <S-Up> zm
  nmap <S-Down> zr
  imap <S-Up> <esc>zc
  imap <S-Down> <esc>zo
  nmap <Up> zc
  nmap <Down> zo

" tabs and buffers
  nmap <S-Left> :w<CR>:tabp<CR>
  nmap <S-Right> :w<CR>:tabn<CR>
  nmap <Left> :w<CR>:bp<CR>
  nmap <Right> :w<cr>:bn<CR>
  nmap <C-Left> <C-w>w
  nmap <Leader>c :bd 
