"----------------------------------------------------------------------------------
" Toggle virtual editing functionality. Use with: <leader>virt
"----------------------------------------------------------------------------------

func! TFL_VirtualEdit()
	if has("virtualedit")
		echo "ERROR: Unable to toggle virtual editing."
		finish
	endif

	if(exists("g:virtualeditstate") == 0)
		set virtualedit=all

		let g:virtualeditstate="true"
		echo "Virtual editing is enabled."
	elseif(g:virtualeditstate == "true")
		set virtualedit=

		unlet g:virtualeditstate
		echo "Virtual editing is disabled."
	endif
endfunc

noremap <silent> <leader>virt :call TFL_VirtualEdit()<CR>
