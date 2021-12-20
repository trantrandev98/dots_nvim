" virtual: hiển thị ô màu ở cuối cùng
" background: tô màu dòng -> red, #000, rgb .....
" signcolumn: hiển thị ô màu bên tay trái number
"set signcolumn=yes:3 "show left column square backbgound <=3 color
let g:Hexokinase_highlighters = [
"\   'virtual', 
"\   'background',
\   'foreground',
\   'sign_column',
\ ]

" Patterns to match for all filetypes
" Can be a comma separated string or a list of strings
" Default value:
"let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

" All possible values
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

" Filetype specific patterns to match
" entry value must be comma seperated list
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }

" Sample value, to keep default behaviour don't define this variable
let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript']
