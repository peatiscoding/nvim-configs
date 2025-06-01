return {
  'vinnymeller/swagger-preview.nvim',
  cmd = { 'SwaggerPreview', 'SwaggerPreviewStop', 'SwaggerPreviewToggle' },
  run = 'npm install -g swagger-ui-watcher',
  config = function()
    require('swagger-preview').setup {
      port = 1234,
      host = 'localhost',
    }
    vim.keymap.set('n', '<leader>ps', ':SwaggerPreview<CR>', { desc = '[P]review [S]wagger' })
  end,
}
