"----------------------------------------------------------------------------------
" Write file and then execute current file with, or execute current file with.
"----------------------------------------------------------------------------------

noremap <silent> <leader>rwpl :w<CR>:!/usr/bin/perl %<CR>
noremap <silent> <leader>rwpy :w<CR>:!/usr/bin/python %<CR>
noremap <silent> <leader>rwb :w<CR>:!/bin/bash %<CR>
noremap <silent> <leader>rws :w<CR>:!/bin/sh %<CR>

noremap <silent> <leader>rpl :!/usr/bin/perl %<CR>
noremap <silent> <leader>rpy :!/usr/bin/python %<CR>
noremap <silent> <leader>rb :!/bin/bash %<CR>
noremap <silent> <leader>rs :!/bin/sh %<CR>
