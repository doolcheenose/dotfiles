# Dotfiles

To install:

1. Clone repo in home directory.

```bash
git clone git@github.com:doolcheenose/dotfiles.git ~/dotfiles
```

2. Enter directory and run `stow` on desired directories.

```bash
cd ~/dotfiles
stow --dotfiles [-n] -v tmux  # dry run with '-n'
```

~Currently, the `--dotfiles` option is used for most directories, with `neovim/` being the exception due to a
[bug](https://github.com/aspiers/stow/issues/33) in `stow`. So to install the neovim config, run without the
`--dotfiles` option.~ As of stow 2.4.0, this issue has been resolved, and neovim/fish `.config` directories have been
renamed to `dot-config/`. All configs can be linked with `--dotfiles` (provided stow is up to date).
