" Set the special <leader> key.o
let mapleader=","

if has("gui_running")
	colorscheme desert
	set linespace=4
	set lines=40 columns=160
	set guifont=Monospace
	set guioptions=aegitM

else
	colorscheme plv
	set ttyfast
endif

if has("syntax")
	filetype on
	syntax on
endif

" Load all of the TFL plugins. (also: set loadplugins)
for p in [globpath(",", "$HOME/.vim/plugin/*.vim")]
	if filereadable(p) | source p | endif
endfor

" Extras for treating every document same
"set nolinebreak
"set nowrap
set noshowmatch
set ruler
set nocursorline
set relativenumber
set number
set cursorline




set showmode
set ttimeout
set nomodeline
set noswapfile
set equalalways
set matchtime=0
set nocompatible
set ttimeoutlen=0
set helpheight=30
set undolevels=3000
set history=10000
set wrapmargin=0
set cmdheight=1
set nohlsearch
set tabstop=8
set incsearch
set t_Co=256
set nobackup
set path+=**
set nomore

if has("folding")
	set foldmethod=marker
	set foldmarker=#\ {{{,#\ }}}
	set viewoptions=folds,options,cursor,unix,slash
endif

if has("wildmenu")
	set wildmenu
	set wildchar=<TAB>
endif

if has("cmdline_info")
	set noruler
endif

noremap <silent> <SPACE> :noh<CR>
noremap <silent> <leader>rc :source $HOME/.vimrc<CR>
noremap <silent> <leader>ul mmyypVr-<Esc>`m
noremap <silent> <leader>ac :center<CR>
noremap <silent> <leader>ar :right<CR>
noremap <silent> <leader>al :left<CR>
noremap <silent> <leader>nn :next<CR>
noremap <silent> <leader>pp :prev<CR>
noremap <leader>hl :set hlsearch!<CR>
noremap <silent> <leader>rdq mmF"xf"x`m
noremap <silent> <leader>rsq mmF'xf'x`m
noremap <silent> <leader>rg mmF`xf`x`m
noremap <silent> K 10j
noremap <silent> L 10k

if has("windows")
	noremap <silent> <leader>ws :split<CR>
	noremap <silent> <leader>wvs :vsplit<CR>
	noremap <silent> <leader>wc :close<CR>
endif

if has("spell")
	noremap <leader>spell :set spell!<CR>
endif

set secure
