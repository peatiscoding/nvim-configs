return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        require('toggleterm').setup {
            open_mapping = [[<c-\>]],
            direction = 'float',
            float_opts = {
                border  = 'single',
            },
        }
        local Terminal  = require('toggleterm.terminal').Terminal
        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

        function _LG_TOGGLE()
          lazygit:toggle()
        end


        vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>lua _LG_TOGGLE()<CR>", {noremap = true, silent = true})
    end
}
