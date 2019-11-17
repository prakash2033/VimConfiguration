"----------------------------------------------------------------------------------
" Toggle moving the cursor and the screen simultaneously, with <leader>scroll keys.
"----------------------------------------------------------------------------------

func! TFL_AutoScroll()
	if(&sidescrolloff == 0 )
		set sidescrolloff=999
		set scrolloff=999

		echo "Automatic scrolling is enabled."
	elseif(&sidescrolloff > 0)
		set sidescrolloff=0
		set scrolloff=0

		echo "Automatic scrolling is disabled."
	endif
endfunc

silent call TFL_AutoScroll()

noremap <silent> <leader>scroll :call TFL_AutoScroll()<CR>
