"----------------------------------------------------------------------------------
" Because it's easy to keep forgetting to sudo. Use with <leader>sudosave keys.
"----------------------------------------------------------------------------------

if executable("/usr/bin/sudo") && executable("/usr/bin/tee")
	noremap <silent> <leader>sudosave :w !/usr/bin/sudo /usr/bin/tee %<CR>
else
	echo "ERROR: Files '/usr/bin/sudo' and/or '/usr/bin/tee' missing."
endif
