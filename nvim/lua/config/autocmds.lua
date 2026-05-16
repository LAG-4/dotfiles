local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local autosave_group = augroup("AutoSave", { clear = true })
autocmd({ "FocusLost", "BufLeave", "InsertLeave" }, {
  group = autosave_group,
  pattern = "*",
  command = "silent! wall",
})

local highlight_group = augroup("HighlightYank", { clear = true })
autocmd("TextYankPost", {
  group = highlight_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
})

local resize_group = augroup("ResizeWindows", { clear = true })
autocmd("VimResized", {
  group = resize_group,
  pattern = "*",
  command = "tabdo wincmd =",
})

local filetype_group = augroup("FileTypeSettings", { clear = true })
autocmd("FileType", {
  group = filetype_group,
  pattern = { "json", "jsonc", "yaml", "yml" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

autocmd("FileType", {
  group = filetype_group,
  pattern = { "python" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

autocmd("FileType", {
  group = filetype_group,
  pattern = { "java" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

autocmd("FileType", {
  group = filetype_group,
  pattern = { "dart" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

local terminal_group = augroup("TerminalSettings", { clear = true })
autocmd("TermOpen", {
  group = terminal_group,
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
    vim.cmd("startinsert")
  end,
})

autocmd("BufEnter", {
  group = terminal_group,
  callback = function()
    if vim.bo.filetype == "opencode_sidebar" or vim.b.terminal_job_id then
      vim.cmd("startinsert")
    end
  end,
})

local checkhealth_group = augroup("CheckHealth", { clear = true })
autocmd("VimEnter", {
  group = checkhealth_group,
  pattern = "*",
  once = true,
  callback = function()
    vim.defer_fn(function()
      vim.notify("Welcome to LazyVim! Press <leader>ch to check health.", vim.log.levels.INFO)
    end, 1000)
  end,
})
