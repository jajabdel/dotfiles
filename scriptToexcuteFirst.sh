#!/bin/bash



# create symbolc link between your bash, ... config and .dotfiles.
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.my_aliases ~/.my_aliases



# create your local bin filej
mkdir -p ~/.local/bin
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc


# create symbol link to your executable file
ln -s ~/.dotfiles/bin/tat ~/.local/bin/tat
