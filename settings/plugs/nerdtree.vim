nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <silent><F3> :NERDTreeToggle<CR>
"Mở cái vị trí cây bên nerd tree ngay file hiện tại đang mở
nnoremap <silent> <F2> :NERDTreeFind<CR> 

"Nhấn ++ để comment code
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Mở nó khi vim được bật lên
autocmd VimEnter * NERDTree

" Start NERDTree. If a file is specified, move the cursor to its window.
" Tự động trỏ con trỏ vô nếu có file chỉ định
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
"Thoát nếu chỉ còn mình nó
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Set trạng thái thư mục expand and collap
let g:NERDTreeDirArrowExpandable = '∞'
let g:NERDTreeDirArrowCollapsible = '⤵'

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

 



