return {
    "heilgar/nvim-http-client",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("http_client").setup({
            create_keybindings = false -- Disable default keybindings completely
        })
    end,
    keys = {
        -- { "<leader>he", "<cmd>HttpEnvFile<cr>", desc = "Select HTTP environment file" },
        -- { "<leader>hs", "<cmd>HttpEnv<cr>", desc = "Set HTTP environment" },
        { "<leader>rq", "<cmd>HttpRun<cr>",     desc = "Run HTTP request" },
        { "<leader>rx", "<cmd>HttpStop<cr>",    desc = "Stop HTTP request" },
        { "<leader>rv", "<cmd>HttpVerbose<cr>", desc = "Toggle verbose mode" },
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
