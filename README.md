# Neovim Config
Some of my neovim configuration.

![example](https://i.imgur.com/MIWi5WK.png)

1) Install Neovim through your favorite package manager `brew install neovim`
2) Ensure you install `coc` [Coc Installation Guide](https://github.com/neoclide/coc.nvim)
3) Install `Coc-Java` with the `:CocInstall coc-java` command in Vim

Throw the config into `~/.config/nvim` and you'll be good to go once the plugins are installed.
Run `so %` to source the config then `:PlugInstall` to install the plugins. 

### High-Level Support
- Mirage theme
- Nerd-tree for file exploration
- cntrlp for quick file search
- golang support via vim-go
