vim.g.opencode_opts = {
  lsp = {
    enabled = true,
  },
  server = {
    start = function()
      require("opencode.terminal").open("opencode --port", {
        split = "right",
        width = math.floor(vim.o.columns * 0.35),
      })
    end,
    stop = function()
      require("opencode.terminal").close()
    end,
    toggle = function()
      require("opencode.terminal").toggle("opencode --port", {
        split = "right",
        width = math.floor(vim.o.columns * 0.35),
      })
    end,
  },
}

return {
  {
    "nickjvandyke/opencode.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>oa",
        function()
          require("opencode").ask()
        end,
        desc = "Ask opencode",
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
          require("opencode").toggle()
        end,
        desc = "Toggle opencode server",
      },
      {
        "<leader>ok",
        function()
          require("opencode").stop()
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
