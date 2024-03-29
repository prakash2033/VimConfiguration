"----------------------------------------------------------------------------------
" Dynamically encourages 'proper' form when using vim to commit changes with git.
"----------------------------------------------------------------------------------

func! TFL_GitEditMSG()
	if(&ft == "gitcommit")
		func! TFL_CursorMoved()
			let a:pos=getcurpos()
			let a:subject=getline('.')
			set spell

			if(a:pos[1] == 2)
				set colorcolumn=50
				set textwidth=0

				if(len(a:subject) >= 50)
					exe "silent normal! 2G49ld$"
					echo "ERROR: Subject length was too long."
				endif
			elseif(a:pos[1] >= 5)
				set colorcolumn=72
				set textwidth=71
			else
				set colorcolumn=0
			endif
		endfunc

		exe "silent normal! ggdG"
		exe "silent normal! i# Enter subject in under fifty characters:\<Enter>\<Enter>"
		exe "silent normal! i\<Enter># Enter main body of Markdown text:\<Enter>\<Esc>2G"

		autocmd CursorMoved * call TFL_CursorMoved()
	endif
endfunc

autocmd BufRead * call TFL_GitEditMSG()
