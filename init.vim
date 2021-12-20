set nocompatible

"File chứa pluggin
call plug#begin('~/.config/nvim/plugged')
"{{ theme }}"
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"{{ sidebar nerdtree }}
  Plug 'preservim/nerdtree' "File browser
  Plug 'Xuyuanp/nerdtree-git-plugin' "Git status
  Plug 'ryanoasis/vim-devicons' "Icon
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync' 				" Sync current file 


"{{ file search }}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Fuzzy finder
  Plug 'junegunn/fzf.vim'

 "{{ status bar }}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  "{{ Terminal }}
  Plug 'voldikss/vim-floaterm'
	
  " Code intellisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server 
	Plug 'jiangmiao/auto-pairs' 					" Parenthesis auto 
	Plug 'alvan/vim-closetag'
	Plug 'mattn/emmet-vim' 
	Plug 'preservim/nerdcommenter' 					" Comment code 
	Plug 'liuchengxu/vista.vim' 					" Function tag bar 
	Plug 'alvan/vim-closetag' 						" Auto close HTML/XML tag 

" Code syntax highlight cho màu chữ đẹp hơn
	Plug 'yuezk/vim-js' 							" Javascript
	Plug 'MaxMEllon/vim-jsx-pretty' 				" JSX/React
	Plug 'sheerun/vim-polyglot' 		"html5, jsx, css, js
	"Debugging
	Plug 'puremourning/vimspector' 					" Vimspector

" Source code version control 
	Plug 'tpope/vim-fugitive' 						" Git

" Emmet html cho vim
	Plug 'mattn/emmet-vim'
" Mau sac
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Tạo cột 
    Plug 'Yggdroot/indentLine'

"Format code 
    Plug 'sbdchd/neoformat'
    Plug 'dense-analysis/ale'

call plug#end()	

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set Theme
" can set style to: storm, night, day
let g:tokyonight_style = "storm"  
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" set transparent for editor
let tokyonight_transparent = "true"
" Ẩn dòng trạng thái không hoạt động và thay thế nó bằng 1 đường viền mỏng
let tokyonight_hide_inactive_statusline = "true"
"When true, section headers in the lualine theme will be bold
"let tokyonight_lualine_bold = "true"
" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
  \ }
" Load the colorscheme
colorscheme tokyonight
" <=> End Set Theme
"============================================================

" => excute Setting
" set 2 Cái này đầu tiên cho nó chạy rồi mới tới tụi kia
let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source '.nvim_settings_dir.'setting-editor.vim'
execute 'source '.nvim_settings_dir.'setting-shotcut-editor.vim'
" ===========================================================
" Chỉ cần bỏ file vô thư mục setting thì nó tự chạy file *.vim
 for setting_file in split(glob(stdpath('config').'/settings/plugs/*.vim'))
	execute 'source' setting_file
endfor
