-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- File Explorer
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 40,
        side = 'left',
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
    }
    -- Update Keybinding
    vim.keymap.set('n', '<leader>e', ':NvimTreeFindFile<CR>', { desc = 'Toggle [E]xplorer' })
  end,
}
