return {
    "heilgar/nvim-http-client",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("http_client").setup({
            create_keybindings = false -- Disable default keybindings completely
        })
        require('telescope').load_extension('http_client')
    end,
    keys = {
        -- { "<leader>he", "<cmd>HttpEnvFile<cr>", desc = "Select HTTP environment file" },
        -- { "<leader>hs", "<cmd>HttpEnv<cr>", desc = "Set HTTP environment" },
        { "<leader>hq", "<cmd>HttpRun<cr>",     desc = "Run HTTP request" },
        { "<leader>hx", "<cmd>HttpStop<cr>",    desc = "Stop HTTP request" },
        { "<leader>hv", "<cmd>HttpVerbose<cr>", desc = "Toggle verbose mode" },
        { "<leader>he", "<cmd>Telescope http_client http_env_files<CR>", desc = "Select HTTP environment file" },
        { "<leader>hs", "<cmd>Telescope http_client http_envs<CR>", desc = "Set HTTP environment" },
        -- { "<leader>rd", "<cmd>HttpDryRun<cr>",  desc = "Perform dry run" },
    },
    cmd = {
        -- "HttpEnvFile",
        -- "HttpEnv",
        "HttpRun",
        "HttpStop",
        "HttpVerbose",
        -- "HttpDryRun"
    },
}
