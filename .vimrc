syntax on
set paste

set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'


call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


autocmd FileType javascript inoremap <buffer> <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()

autocmd FileType javascript nnoremap <buffer> <leader>ca :CocAction<CR>

autocmd FileType html inoremap <buffer> <silent><expr> <Tab>
     \ pumvisible() ? "\<C-n>" :
	   \ <SID>check_back_space() ? "\<Tab>" :
	   \ coc#refresh()
autocmd FileType html nnoremap <buffer> <leader>ca :CocAction<CR>


let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.json Prettier


autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
		    \   exe "normal! g`\"" |
				    \ endif



execute pathogen#infect()

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set paste

autocmd FileType javascript inoremap <buffer> <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
autocmd FileType javascript nnoremap <buffer> <leader>ca :CocAction<CR>



autocmd FileType html inoremap <buffer> <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
autocmd FileType html nnoremap <buffer> <leader>ca :CocAction<CR>

