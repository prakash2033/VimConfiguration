"----------------------------------------------------------------------------------
" Enter a shell user-specified (position 1) shebang, of method (position 2).
"----------------------------------------------------------------------------------

func! TFL_Banger(shell, method)
	exe "silent normal! mc"

	if(a:method == "default")
		if(a:shell == "bash")
			exe "normal! ggi#!/bin/bash\<CR>\<CR>\<Esc>"
		elseif(a:shell == "sh")
			exe "normal! ggi#!/bin/sh\<CR>\<CR>\<Esc>"
		elseif(a:shell == "perl")
			exe "normal! ggi#!/usr/bin/perl\<CR>\<CR>\<Esc>"
		endif
	elseif(a:method == "env")
		if(a:shell == "bash")
			exe "normal! ggi#!/usr/bin/env bash\<CR>\<CR>\<Esc>"
		elseif(a:shell == "sh")
			exe "normal! ggi#!/usr/bin/env sh\<CR>\<CR>\<Esc>"
		elseif(a:shell == "perl")
			exe "normal! ggi#!/usr/bin/env perl\<CR>\<CR>\<Esc>"
		endif
	endif

	exe "silent normal! `c"
endfunc

noremap <silent> <leader>perl :call TFL_Banger("perl", "default")<CR>
noremap <silent> <leader>bash :call TFL_Banger("bash", "default")<CR>
noremap <silent> <leader>shell :call TFL_Banger("sh", "default")<CR>
