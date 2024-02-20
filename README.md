# Neovim's configuration

A init.lua that can be just copied-and-paste. Build on top of [Neovim's Kickstart](https://github.com/nvim-lua/kickstart.nvim). [YouTube link](https://www.youtube.com/watch?v=stqUbv-5u2s)

## Notes

Some of the requirements that uses in this configurations:

- npm (node16+) if you are NVM and default it to <12 then it will failed to perform certain task that relies on node binaries). If you are use M1, tmux, zsh, node20. It supports M1 natively hence make sure your system is running with arm64. This will required at all your shell's toolchain is running on arm64 mode. (Use `file` to help identify if your execution is installed with the correct arch.)
- [prettierd](https://github.com/fsouza/prettierd) to support prettiers. The repo used [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim) (Null Language Server) to facilitate the LSP bridges. However tsserver also provide the formatting function. Hence this repo modified the script so that the formatter only filtered out the null-ls language server only. (e.g. prettierd).
- You will also need a [ripgrep](https://github.com/BurntSushi/ripgrep). Some of the plugins will need this grep to perform live grep (Search the source codes within folder)

## To use

Fork this repo place it on `~/.config/nvim/`.

It uses [folke/lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager. Hence to install additional plugin you will need to follow lazy's instruction. Type `:Lazy` to install/clean your built.

In case you moved it from somewhere elase please make sure you have clean the existing config and its related caches.

```bash
rm -fr ~/.config/nvim/
rm ~/.local/share/nvim/
```

# Shortcuts!

1. Terminal
    - integrate with Terminal via `C-\` (type `C-\` again to toggle back)
    - integrate with LazyGit via `C-g` (use `q` to quit)
1. Hapoon
    - mark with hapoon `<C-m>`
    - list hapoon `<leader>hl`
1. Telescope
    - search file in current project using `<leader>sf` (Search File)
    - search text in current project using `<leader>sg` (Search Text)
1. Formatter
    - automatically saved. but if needed use `<leader>f`
1. Markdown Preview
    - open up markdown preview in browser `<leader>m`
1. Codeium
    - accept the suggestion via `<c-t>`
