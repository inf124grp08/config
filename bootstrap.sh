#!/bin/bash
# this will symlink shit
set -x
ln -sf $HOME/config/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/config/vimrc $HOME/.vimrc
ln -sf $HOME/config/gitconfig $HOME/.gitconfig
ln -sf $HOME/config/inputrc $HOME/.inputrc
