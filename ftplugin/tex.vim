" File: tex.vim
" Description: 
" Author: Luke
" Last Change: 2017-03-7

if exists('loaded_tex')
	finish
endif
let loaded_tex=1

set tw=80
let &colorcolumn=81
setlocal foldmethod=expr foldexpr=vimtex#fold#level(v:lnum)
