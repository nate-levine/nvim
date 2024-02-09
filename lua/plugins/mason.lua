return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        local mason = require("mason")
        mason.setup()

        require("mason-lspconfig").setup {
            ensure_installed = { 
                "lua_ls", 
                "clangd", 
                "omnisharp_mono", 
                "omnisharp", 
                "cmake", 
                "cssls", 
                "cssmodules_ls", 
                "unocss", 
                "html", 
                "jsonls", 
                "biome", 
                "jdtls", 
                "quick_lint_js",
                "tsserver",
                "vtsls",
                "marksman",
                "prosemd_lsp",
                "remark_ls",
                "vale_ls",
                "matlab_ls",
                "powershell_es",
                "jedi_language_server",
                "pyright",
                "sourcery",
                "pylsp",
                "ruff_lsp",
                "vimls",
            },
        } 
    end,
}
