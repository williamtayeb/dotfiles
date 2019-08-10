DOTFILES="$HOME/Repositories/dotfiles"

rm -rf $HOME/.vimrc
rm -rf $HOME/.williamrc
rm -rf $HOME/.gitignore
rm -rf $HOME/.gitconfig
rm -rf $HOME/.tmux.conf
rm -rf $HOME/.config/nvim/init.vim

ln -s $DOTFILES/.williamrc $HOME/.williamrc
ln -s $DOTFILES/.vimrc $HOME/.vimrc
ln -s $DOTFILES/.gitignore $HOME/.gitignore
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES/.tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.config/nvim
ln -s $DOTFILES/.config/nvim/init.vim $HOME/.config/nvim/init.vim

grep -qxF 'source ~/.williamrc' $HOME/.zshrc || echo 'source ~/.williamrc' >> $HOME/.zshrc
