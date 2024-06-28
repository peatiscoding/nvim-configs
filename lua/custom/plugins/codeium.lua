return {
  'Exafunction/codeium.vim',
  config = function()
    vim.g.codeium_filetypes = {
      ["*"] = true,
      ["go"] = false
    }
    vim.keymap.set('i', '<c-t>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
  end
}
