return {
  "nvim-treesitter/nvim-treesitter",
  branch="main",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter")
    config.install {"lua", "python", "go", "vimdoc","markdown"}
    -- config.setup({
    --   ensure_installed={"lua", "python", "go", "vimdoc","markdown"},
    --   sync_install = false,
    --   highlight = { enable = true },
    --   indent = { enable = true },
    -- })
  end
}
