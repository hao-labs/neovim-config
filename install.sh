# copy vimrc config file
cp .vimrc ~/.vimrc
# create config folder
mkdir -p ~/.vim
# copy all vim config
cp -r .vim/* ~/.vim
# install all vim plugins and dependencies
nvim +PlugInstall +PlugUpgrade +PlugUpdate +PlugClean! +UpdateRemotePlugins +qall
