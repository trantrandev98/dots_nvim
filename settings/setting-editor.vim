"copy dang test 
set backspace=2   " Backspace deletes like most programs in insert mode
set history=50
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoindent
set smartindent

set autoread
set autowrite
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" ====================== ========
set mouse=a 				" Enable mouse
set tabstop=4 				" 
set shiftwidth=4 			" 
"set listchars=tab:\¦\ 		" Tab charactor 
"set list
"set foldmethod=indent 		" 
"set foldlevelstart=99 		"  
set number 					" Show line number
"set relativenumber			" Set cái number nó chạy lại từ 1 vị trí hiện tại
set ignorecase 				" Enable case-sensitive  
" Disable backup
set nobackup
set nowb
set noswapfile

"Cho nó ko hiện chữ --INSERT-- dưới nữa
set noshowmode
" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" Jump to something
" search and highlight 
nnoremap <silent><leader>f /
" clear highlight from search by /


syntax on

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif
 
" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime 
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg 
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None

