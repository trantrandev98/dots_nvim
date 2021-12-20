" => settings
"================= EMET ===================
let g:user_emmet_mode = 'n' "chac la o mode nomal
let g:user_emmet_leader_key = ','
"Map <leader> to <space>
	let mapleader=' '
" map redo ctrl + r 
	nnoremap U <C-R>
" Better nav for omnicomplete when go up and down in menu popup
	inoremap <expr> <c-j> ("\<C-n>") "ctrl j
	inoremap <expr> <c-k> ("\<C-p>") "ctrl k

" ===== RESIZE WINDOWN =====
" Use alt + hjkl to resize windows
	nnoremap <M-j>    :resize -2<CR> 
	nnoremap <M-k>    :resize +2<CR>
	nnoremap <M-h>    :vertical resize -2<CR>
	nnoremap <M-l>    :vertical resize +2<CR>
"Or press mũi tên lên, xuống, trái, phải
	nmap <M-Right> :vertical resize +1<CR>
	nmap <M-Left> :vertical resize -1<CR>
	nmap <M-Down> :resize +1<CR>
	nmap <M-Up> :resize -1<CR>

"===== Change Slit windown =====
" TAB in general mode will move to text buffer
	nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
	nnoremap <S-TAB> :bprevious<CR>
" Better window navigation ctrl+h,j,k,l instead of ctrl+w+h,j,k,l
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

" ==== CLone a block ====
"clone paragraph inside a block `}` and aste it right under empty row
"Nó sẽ cpy và past nguyên khối (1 khối không được cách dòng ra)"
	nnoremap cp yap}p 
" format code inside a block
	noremap<leader>a =ip

" map % to jum faster better open and close of {, [, (
" Di chuyển đến các dấu ngoặc đóng mở: nhấn space + j || dấu %
	nnoremap <silent><leader>j %
	vnoremap <silent><leader>j %

"==================================  Di Chuyen ============================ "
"Fast save : nhấn space + s .....
	nnoremap <silent><leader>s :w!<cr>
" split current window vertical on the right 'set splitright'  
	nnoremap <silent><Leader>w :vsplit<CR>
" split current window horizontal on bottom 'set splitbelow'
	nnoremap <silent><Leader>W :split<CR>
" quick jump to first non-blank of row
	nnoremap <silent><leader>h ^
" quick jump to last non-blank of row
	nnoremap <silent><leader>l $

" ================== VISUAL MODE ========================
" In Visual Mode Indent shifting > and <
" Trong chế độ tô đen: nhấn < hoặc > để thụt giống tab ra vào 
	vnoremap > >gv
	vnoremap < <gv

"In Visual Mode move line up, down when in visual mode
"Nhấn K để chuyển dòng này lên, J chuyển xuống khi ở chế độ Visual"
  vnoremap K :m '<-2<CR>gv=gv 
  vnoremap J :m '>+1<CR>gv=gv

" ================== NOMAL MODE =========================
" In normal mode map to go faster up, down
	nnoremap J 5j 
	nnoremap K 5k

" search and highlight 
nnoremap <silent><leader>f /
" clear highlight from search by /
nnoremap <silent><leader><cr> :noh<cr>
"nertdtree refesh
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

