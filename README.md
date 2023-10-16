# About
This repository contains my personal configuration for Vim. All of the configuration is written in Vim script for
maximum compatibility with both vanilla Vim and [Neovim](https://neovim.io/). Currently, I use vanilla Vim.

My philosophy when creating this configuration is to show only useful information and to be as lightweight as possible.
This configuration should significantly improve the experience over the default configuration but it should not
negatively affect performance.

## Usage
After cloning the repository, `source` the [martin-config.vim](martin-config.vim) file in your *.vimrc*:

```
source ~/Programming/vim-config/martin-config.vim
```

This configuration uses ["vim-plug"](https://github.com/junegunn/vim-plug) to manage plugins. It will be automatically
installed when starting Vim if it is missing.
