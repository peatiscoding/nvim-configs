return {
  'weirongxu/plantuml-previewer.vim',
  requires = {
    'tyru/open-browser.vim',
  },
  cmd = { 'PlantumlOpen' },
  config = function()
    vim.keymap.set('n', '<leader>pm', ':PlantumlOpen<CR>', { desc = '[P]review [P]lantUML' })
  end,
}
