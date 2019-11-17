"----------------------------------------------------------------------------------
" Various incredibly useful snippet-like things. Edit as needed... good luck.
"----------------------------------------------------------------------------------

if filereadable(expand("$HOME") . "/.vim/snippet/setup")
	noremap <silent> <leader>setup :r $HOME/.vim/snippet/setup<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/psetup")
	noremap <silent> <leader>psetup :r $HOME/.vim/snippet/psetup<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/modeline")
	noremap <silent> <leader>modeline :r $HOME/.vim/snippet/modeline<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/error")
	noremap <silent> <leader>err :r $HOME/.vim/snippet/error<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/wgetchk")
	noremap <silent> <leader>wget :r $HOME/.vim/snippet/wgetchk<CR>
endif

if filereadable(expand("$HOME") . "/.vim/snippet/updatechk")
	noremap <silent> <leader>update :r $HOME/.vim/snippet/updatechk<CR>
endif

noremap <silent> <leader>bar 0i#<Esc>82a-<Esc>0
