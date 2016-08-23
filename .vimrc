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
  map ; :
  map <Leader>w :w<cr>

" Leader Commands
  nmap <Leader>q :wq!<CR> 
  vmap <Leader>y "*y      
  vmap <Leader>d "+d      
  nmap <Leader>p <CR>"+p  
  nmap <Leader>P <CR>"+P
  vmap <Leader>p <CR>"+p
  vmap <Leader>P <CR>"+P
  map  <Leader>o :tabfind
  map  <Leader>t :TagbarToggle<CR> 
  map  <Leader>i :set paste<CR>i
  map  <Leader>I oimport ipdb; ipdb.set_trace()<CR><esc>
  map  <leader>f :set foldlevel=
  nnoremap <Leader>, :!ruby %<cr>
  nnoremap <Leader>r :source ~/.vimrc<cr>
  map <Leader>z <C-z>

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
