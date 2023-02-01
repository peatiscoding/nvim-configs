# Neovim's configuration

A init.lua that can be just copied-and-paste. Build on top of [Neovim's Kickstart](https://github.com/nvim-lua/kickstart.nvim). [YouTube link](https://www.youtube.com/watch?v=stqUbv-5u2s)

## Notes

Required:

- npm (node16+) if you are NVM and default it to <12 then it will failed to perform certain task that relies on node binaries).
- [prettierd](https://github.com/fsouza/prettierd) to support prettiers. The repo used [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim) (Null Language Server) to facilitate the LSP bridges. However tsserver also provide the formatting function. Hence this repo modified the script so that the formatter only filtered out the null-ls language server only. (e.g. prettierd).
- You will also need a [ripgrep](https://github.com/BurntSushi/ripgrep). Some of the plugins will need this grep to perform live grep (Search the source codes within folder)

## To use

Simply copy this `init.lua` and paste it to your neovim's directory. (Typically: `~/.config/nvim/init.lua`

