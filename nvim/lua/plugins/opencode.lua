vim.g.opencode_opts = {
  lsp = {
    enabled = true,
  },
}

local sidebar_state = {
  winid = nil,
  bufnr = nil,
}

local function toggle_sidebar()
  local term = require("opencode.terminal")

  if sidebar_state.winid and vim.api.nvim_win_is_valid(sidebar_state.winid) then
    vim.api.nvim_win_hide(sidebar_state.winid)
    sidebar_state.winid = nil
    return
  end

  if sidebar_state.bufnr and vim.api.nvim_buf_is_valid(sidebar_state.bufnr) then
    sidebar_state.winid = vim.api.nvim_open_win(sidebar_state.bufnr, true, {
      split = "right",
      width = math.floor(vim.o.columns * 0.35),
    })
    vim.schedule(function()
      vim.cmd("startinsert")
    end)
    return
  end

  term.open("opencode --port", {
    split = "right",
    width = math.floor(vim.o.columns * 0.35),
  })

  vim.api.nvim_create_autocmd("TermOpen", {
    once = true,
    callback = function(ev)
      sidebar_state.bufnr = ev.buf
      sidebar_state.winid = vim.api.nvim_get_current_win()
      vim.cmd("stopinsert")
    end,
  })
end

return {
  {
    "nickjvandyke/opencode.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<C-A>",
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
          require("opencode.terminal").close()
          sidebar_state.winid = nil
          sidebar_state.bufnr = nil
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
