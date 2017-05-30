autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd FileType c,cpp source /home/jl/.vim/syntax/opencl.vim
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala
au BufRead,BufNewFile *.cl              setfiletype opencl
set mouse=a
set hlsearch
setlocal omnifunc=syntaxcomplete#Complete
" set smartindent
nnoremap <silent> <F8> :TlistToggle<CR>
" Set the ctr+space for completion
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

map <Leader>c <Plug>(operator-camelize)
map <Leader>C <Plug>(operator-decamelize)
set background=dark
colorscheme solarized
" colorscheme zellner 
