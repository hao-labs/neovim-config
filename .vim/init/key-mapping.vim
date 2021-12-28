let mapleader = "," " set map leader

"----------[universal mapping]--------
" Toggle F12 to toggle number
noremap <silent> <F12> :set number!<CR>
noremap <silent> <F11> :call ToggleLineNumber()<CR>
" ([b) to move bufer to prev files
nnoremap [b :bp <CR>
" (]b) to move buffer to next files
nnoremap ]b :bn <CR>
" Search and replace word under cursor using F4
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

"----------[normal-mode mapping]--------
" (,l) Toggle list (display unprintable characters)
nmap <leader>l :set list!<CR>
"" Split window navigation (ctrl + {h,j,k,l})
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"----------[vim-conifg mapping]--------
"" make it easy to edit vimrc config
nmap vimrc :tabedit ~/.vimrc<cr>

"----------[insert-mode mapping]--------
" (kj) alias for esc button
imap kj <ESC>

