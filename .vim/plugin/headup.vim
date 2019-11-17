"----------------------------------------------------------------------------------
" Add and update header and its timestamp, including any instalce of the _VERSION_
" variable (assignment) datestamp in shell scripts/programs, if this variable is
" found. Also cleans up spacing. Does not save; that's up to you.
"
" For now, you'll have to change the header information (E-Mail and GitHub entries)
" to match your own; this will hopefully be more user-friendly in the future.
"
" To use, enter <leader>header to place it, and <leader>save to update it and the
" _VERSION_ variable's value, if it's found.
"----------------------------------------------------------------------------------

func! TFL_HeadUp(action)
	if(exists("*strftime") == 1)
		if(a:action == "place")
			exe "silent normal! i#\<Esc>82a-\<Esc>o"
			exe "silent normal! i# Project Name      - \<CR>"
			exe "silent normal! i# Started On        - \<Esc>\"_\"=strftime(\"%a %_d %b %T %Z %Y\")\<CR>po"
			exe "silent normal! i# Last Change       - \<Esc>\"_\"=strftime(\"%a %_d %b %T %Z %Y\")\<CR>po"
			exe "silent normal! i# Author E-Mail     - prakash2033@outlook.com\<CR>"
			exe "silent normal! i# Author GitHub     - https://github.com/prakash2033\<CR>"
			exe "silent normal! i#\<Esc>82a-\<Esc>0o"
		elseif(a:action == "update")
			exe "silent normal! mc"

			if(search("^[#/\"]* Last Change\\s*- ", "ep") > 0)
				exe "silent normal! ld$\"_\"=strftime(\"%a %_d %b %T %Z %Y\")\<CR>p"
				if(search("^_VERSION_=\"", "ep") > 0)
					" Shell syntax support.
					exe "silent normal! di\"\"=strftime(\"%F\")\<CR>P"
				elseif(search("^my $_VERSION_ = \"", "ep") > 0)
					" Perl syntax support.
					exe "silent normal! di\"\"=strftime(\"%F\")\<CR>P"
				endif
			endif

			exe "silent normal! :%s/\\s*$//\<CR>"
			exe "silent normal! :%s/\\t*$//\<CR>`c"
		endif
	else
		echo "ERROR: Unable to find strftime() builtin."
	endif
endfunc

noremap <silent> <leader>header :call TFL_HeadUp("place")<CR>
noremap <silent> <leader>save :call TFL_HeadUp("update")<CR>
