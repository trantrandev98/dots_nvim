- Chạy lênh để cài đặt    :CocInstall coc-json coc-tsserver
- trong vim: muon sai duoc space + g phai cai: sudo apt-get install ripgrep
- Tất cả những file cấu hình đã bỏ hết vô folder setting theo đường dẫn: config/settings/*vim
chỉ cần tạo 1 file có tên *.vim nó sẽ tự động chạy vào đó.
- Gõ CocConfig để cấu hình file json của nó 
** Lưu ý:
0. Sau khi cài nvim xong thì mở nó lên rồi chạy lệnh:    :pwd và bỏ project này vào đường dẫn đó
1. Sau đó mở vim lên chạy :PlugInstall để cài đặt các pluggin
2. Nếu bị lỗi cái Plug hesokinase thì : 
 - Vào thư mục cài đặt Pluggin đã tải về của nó: .config/nvim/plugged/hexokinase-nvim
 - mở terminal tại đường dẫn đó và chạy: make hexokinase
 - Nếu nó kêu lỗi git gì đó thì phải cài:  sudo apt install golang 
3. Khi sử dụng vim nếu nó bị chèn chữ mất chế độ nomal jhkl không được thì tắt cái bàn phím tiếng việt đi chuyển sang anh
4. Pluggin Coc nó quan trọng nhất nên phải xem qua nó: nó giúp reformat code, gợi ý code, gõ code nhanh .....
5. Nhấn ctrl - trên dãy số ngang kế phím backspace để thu nhỏ code, ctr shift + để tăng font code


Plug:
- fzf: làm việc với file seach... cái nào liên quan đến thì vô đây xem phím tắt
- floaterm: terminal
- nerdtree: cái sidebar
- polyglot: hỗ trợ cách đánh dấu và thụt lề 
- vim-sneak: tim kiem tu
- coc: truy xuất file, tìm kiếm, đi tới giống ctrl + click đến file đích, gợi ý code, ....

"*****************************************************************************
"" Mappings, nnore = nonrecursive (De quy) mean call function inside function
" create loop and can be infinited loop
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"*****************************************************************************

       (nothing) In a function: local to a function; otherwise: global 
buffer-variable    b:     Local to the current buffer.                          
window-variable    w:     Local to the current window.                          
tabpage-variable   t:     Local to the current tab page.                        
global-variable    g:     Global.                                               
local-variable     l:     Local to a function.                                  
script-variable    s:     Local to a :source'ed Vim script.                     
function-argument  a:     Function argument (only inside a function).           
vim-variable       v:     Global, predefined by Vim.

