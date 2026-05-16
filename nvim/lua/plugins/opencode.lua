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
      require("opencode").sidebar.toggle()
    end,
  },
}

local sidebar_win = nil

local function create_sidebar()
  if sidebar_win and sidebar_win:buf_valid() then
    return sidebar_win
  end

  sidebar_win = Snacks.win({
    file = "opencode",
    position = "right",
    width = 0.35,
    wo = {
      winbar = "Opencode AI",
    },
    bo = {
      filetype = "opencode_sidebar",
    },
    keys = {
      q = "hide",
    },
  })

  return sidebar_win
end

local function toggle_sidebar()
  local win = create_sidebar()

  if not win:buf_valid() then
    win:show()
    vim.api.nvim_buf_call(win.buf, function()
      vim.fn.jobstart("opencode", {
        term = true,
        on_exit = function()
          if sidebar_win then
            sidebar_win:hide()
          end
        end,
      })
    end)
    vim.cmd("startinsert")
    return
  end

  if win:is_focused() then
    win:hide()
  else
    win:show()
    win:focus()
    vim.cmd("startinsert")
  end
end

return {
  {
    "nickjvandyke/opencode.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<C-`>",
        function()
          toggle_sidebar()
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
          toggle_sidebar()
        end,
        desc = "Toggle opencode sidebar",
      },
      {
        "<leader>ok",
        function()
          require("opencode").stop()
          if sidebar_win then
            sidebar_win:close()
            sidebar_win = nil
          end
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
