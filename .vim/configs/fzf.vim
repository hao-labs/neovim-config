"==========[ CONFIGURATIONS ]==========
"----------[fzf.vim configs]--------
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" Find in files with preview
" :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
" :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%'),
  \                 <bang>0)

"==========[ KEY-MAPPINGS ]==========
"----------[fzf.vim mapping]--------
let mapleader = "," " set map leader
" (ctrl+p) for fzf files
map <c-p> :Files<CR>
" (,u) to open list of available methods
nnoremap <Leader>u :FzfFunky<CR>
" (,U) to open list of available methods with a word under cursor
nnoremap <Leader>U :execute 'FzfFunky ' . expand('<cword>')<Cr>

" bind Shitf + K to grep word under cursor with fzf ag
" nnoremap K :Ag <C-R><C-W><CR>:cw<CR>
nnoremap K :execute 'Rg ' . expand('<cword>')<Cr>
" nnoremap K :call fzf#vim#ag(expand('<cword>'))
nnoremap fif :Rg 
