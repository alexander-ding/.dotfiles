# Dotfiles

This is a central repository where I keep my configuration files for various tools.
I keep a local clone of the repository at `$HOME/.dotfiles` and create soft links to each config file.
For example,

```bash
ln -s ~/.zshrc ~/.dotfiles/.zshrc
```

If need be, it's simple enough to create a script to automate this soft link creation, but I'm lazy.

