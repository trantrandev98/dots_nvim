"Cho no show các file ẩn lên
let NERDTreeShowHidden=1
"coc setting
"pairs: đóng mở ngoặc
"snippets: gợi ý gõ nhanh
"Sử dụng nếu nó không add vào: CocInstall <name extension> to install 
"Vi du: CocInstall coc-snippets coc-tsserver
let g:coc_global_extensions = [
	\	'coc-snippets',
	\	'coc-tsserver',
	\   'coc-pairs', 
	\   'coc-eslint',
 	\	'coc-html',
	\	'coc-css',
	\	'coc-json',
	\]

let g:vimwiki_list = [{'path': '~/documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Use K to show documentation in preview window.
nnoremap <silent><leader> k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" GoTo code navigation, super cool to work with source code 
" go to definition for example go to the function where it is exported to use
nmap <silent>gd <Plug>(coc-definition)
" back to previous location. Very useful when using gd then <C-o> to go back 
nmap <silent>gb <C-o>
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" Go to references where that function being used in the source code
nmap <silent>gr <Plug>(coc-references)
nmap <silent><F12> <Plug>(coc-definition)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)


