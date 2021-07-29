# .dotfiles
My config files I frequently use. Tucked into a git repo to have them available from everywhere.

## Usage
* Clone with `git clone git@github.com:stefanhorning/.dotfiles.git` (ideally into your home dir)
* Create symlinks like `ln -s .dotfiles/vimrc .vimrc`. You might to remove existing configs first

### Notes for vim configs
For vim create symlinks from .vimrc and .vim like this:

```sh
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/vim .vim
```

For neovim link from other places:
```sh
ln -s ~/.dotfiles/vimrc ~/.config/nvim/init.vim
ln -s ~/.dotfiles/vim ~/.local/share/nvim/site
```

### Bashrc / Gitrc

```sh
ln -s .dotfiles/gitconfig .gitconfing
ln -s .dotfiles/bashrc .bashrc
```
