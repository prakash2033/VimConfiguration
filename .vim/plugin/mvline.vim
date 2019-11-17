"----------------------------------------------------------------------------------
" Move the current line up or down with Ctrl + l (up) and Ctrl + k (down). These
" bindings only work if you're using the noarrows plugin, otherwise it'll use the
" default VIM Ctrl + k (up) and Ctrl + j (down) keybindings.
"----------------------------------------------------------------------------------

func! TFL_MVLine(where)
	if(a:where == "up")
		exe "silent normal! :move .-2\<CR>"
	elseif(a:where == "down")
		exe "silent normal! :move +1\<CR>"
	endif
endfunc

noremap <silent> <C-k> :call TFL_MVLine("up")<CR>
noremap <silent> <C-j> :call TFL_MVLine("down")<CR>
inoremap <silent> <C-k> \<Esc>mc:call TFL_MVLine("up")<CR>`cil
inoremap <silent> <C-j> \<Esc>mc:call TFL_MVLine("down")<CR>`cil
vnoremap <silent> <C-k> :call TFL_MVLine("up")<CR>
vnoremap <silent> <C-j> :call TFL_MVLine("down")<CR>
