return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    -- require('mini.starter').setup()
    -- require('mini.tabline').setup()
    require('mini.bracketed').setup()
  end,
}
