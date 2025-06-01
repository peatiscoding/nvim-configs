return {
  {
    'f-person/git-blame.nvim',
    config = function()
      require('gitblame').setup {
        enabled = true,
        delay = 300,
      }
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
}
