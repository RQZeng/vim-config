syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" molokai
"let g:molokai_original = 1
"set background=dark
"let g:rehash256 = 1
"colorscheme molokai

set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set ruler
set cul " cursorline
set nu
set cuc " cursorcolumn

set guifont=Monaco:h13


" for those row has tail space,mark red to warning
highlight tailSpace ctermbg=red guibg=red
match tailSpace /\v\s+$/

" for airline
set laststatus=2

" 80 char limit every row
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/


augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
	au! BufRead,BufNewFile *.proto setfiletype proto
	au! BufRead,BufNewFile *.go setfiletype go
	au! BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.js,*.go,*.vim,*.proto match OverLength /\%81v.\+/
augroup end
