"----------------------------------------------------------------------------------
" Display the date or time using <leader>date or <leader>time, respectively. The
" date and time are shown using the %F and %X parameters.
"----------------------------------------------------------------------------------

if(exists("*strftime") == 1)
	func! TFL_DatePaste(type)
		exe "silent normal! mc"

		if(a:type == "date")
			exe "silent normal! \"_\"=strftime(\"%F\")\<CR>p"
		elseif(a:type == "time")
			exe "silent normal! \"_\"=strftime(\"%X\")\<CR>p"
		else
			echo "ERROR: Invalid type selected."
		endif

		exe "silent normal! `c"
	endfun
else
	echom "ERROR: Unable to load datepaste plugin."
endif

noremap <silent> <leader>date :silent call TFL_DatePaste("date")\<CR>
noremap <silent> <leader>time :silent call TFL_DatePaste("time")\<CR>
