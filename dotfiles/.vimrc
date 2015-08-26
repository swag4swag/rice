let $PYTHONPATH='/usr/lib/python3.4/site-packages'
syntax on
set nu
set laststatus=2

set listchars=tab:▸\ ,eol:¬
color beauty256 
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set mouse=a
set cindent
filetype plugin indent on
nmap <leader>l :set list!<CR>
nmap <leader>t :set expandtab | retab!<CR>
if has("autocmd")
  filetype on

  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType java setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
  
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

