if empty(glob('~/.config/nvim/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

for f in glob('$HOME/.vim/plugins/*.vim', 0, 1)
  execute 'source' f
endfor

call plug#end()

for f in glob('$HOME/.vim/configs/*.vim', 0, 1)
  execute 'source' f
endfor
