for f in glob('$HOME/.vim/init/*.vim', 0, 1)
  execute 'source' f
endfor

"" make it easy to edit the vimrc file
nmap vimrc :tabedit $MYVIMRC<cr>
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
