-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

return {
  {
    "f-person/auto-dark-mode.nvim",
    config = {},
    init = function() require("auto-dark-mode").init() end,
  },
  {
    "whonore/Coqtail",
  },
  {
    "tomtomjhj/coq-lsp.nvim",
    ft = { "coq" },
    opts = {
      mappings = true,
    },
  },
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
    event = { "User KittyScrollbackLaunch" },
    version = "*", -- latest stable version, may have breaking changes if major version changed
    config = function() require("kitty-scrollback").setup() end,
  },
}
