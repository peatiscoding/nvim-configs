return {
  'Exafunction/codeium.vim',
  config = function()
    vim.keymap.set('i', '<c-t>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
  end
}
