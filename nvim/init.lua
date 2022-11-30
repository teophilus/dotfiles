require("teon.plugins-setup")
require("teon.core.options")
require("teon.core.keymaps")
require("teon.core.colorscheme")
require("teon.plugins.comment")
require("teon.plugins.nvim-tree")
require("teon.plugins.lualine")
require("teon.plugins.telescope")
require("teon.plugins.nvim-cmp")
require("teon.plugins.lsp.mason")
require("teon.plugins.lsp.lspsaga")
require("teon.plugins.lsp.lspconfig")
require("teon.plugins.lsp.null-ls")
require("teon.plugins.autopairs")
require("teon.plugins.treesitter")
require("teon.plugins.gitsigns")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      -- Auto Open NvimTree on Start
      vim.api.nvim_command("NvimTreeOpen")
    end
  end,
})
