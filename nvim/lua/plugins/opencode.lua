vim.g.opencode_opts = {
  lsp = {
    enabled = true,
  },
}

return {
  {
    "nickjvandyke/opencode.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<C-A>",
        function()
          require("opencode.terminal").toggle("opencode --port", {
            split = "right",
            width = math.floor(vim.o.columns * 0.35),
          })
        end,
        desc = "Toggle opencode sidebar",
        mode = { "n", "t" },
      },
      {
        "<leader>oa",
        function()
          require("opencode").ask()
        end,
        desc = "Ask opencode (popup)",
        mode = { "n", "v" },
      },
      {
        "<leader>os",
        function()
          require("opencode").select()
        end,
        desc = "Select opencode action",
        mode = { "n", "v" },
      },
      {
        "<leader>ot",
        function()
          require("opencode.terminal").toggle("opencode --port", {
            split = "right",
            width = math.floor(vim.o.columns * 0.35),
          })
        end,
        desc = "Toggle opencode sidebar",
      },
      {
        "<leader>ok",
        function()
          require("opencode.terminal").close()
        end,
        desc = "Kill opencode server",
      },
      {
        "<leader>on",
        function()
          require("opencode").command("session.new")
        end,
        desc = "New opencode session",
      },
    },
  },
}
