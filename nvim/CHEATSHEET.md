# LazyVim Cheatsheet - VSCode User Edition

## 🚀 Getting Started

```bash
nvim                    # Open Neovim
nvim .                  # Open current directory
nvim <file>             # Open specific file
:q                      # Quit
:w                      # Save
:wq                     # Save and quit
:qa                     # Quit all
```

## 📁 File Operations (VSCode-like)

| Shortcut | Action |
|----------|--------|
| `Ctrl+P` | Find file (like VSCode Ctrl+P) |
| `Ctrl+S` | Save file |
| `Ctrl+/` | Toggle comment |
| `Ctrl+Shift+F` | Find in files (grep) |
| `Ctrl+Shift+E` | Find in git files |
| `Ctrl+B` | Toggle terminal |
| `Ctrl+A` | Ask opencode AI |
| `Ctrl+Shift+P` | Command palette |
| `Leader+e` or `Leader+-` | Open file explorer (Oil.nvim) |

## 🔍 Find & Search (Snacks Picker)

| Shortcut | Action |
|----------|--------|
| `Leader+ff` | Find files |
| `Leader+fg` | Grep in files |
| `Leader+fb` | Find buffers |
| `Leader+fo` | Find recent files |
| `Leader+fw` | Find word under cursor |

## 🛠️ LSP & Code Actions

| Shortcut | Action |
|----------|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Find references |
| `K` | Hover documentation |
| `Leader+ca` | Code action |
| `Leader+rn` | Rename symbol |
| `Leader+cd` | Show diagnostics |
| `Leader+cn` | Next diagnostic |
| `Leader+cp` | Previous diagnostic |
| `Leader+td` | Type definition |
| `Leader+af` | Format file |
| `Leader+as` | Signature help |

## 🤖 Opencode AI Assistant

| Shortcut | Action |
|----------|--------|
| `Ctrl+A` | **Ask opencode** (popup prompt) |
| `Leader+oa` | Ask opencode (popup prompt) |
| `Leader+os` | Select opencode action (preset prompts) |
| `Leader+ot` | Toggle opencode sidebar |
| `Leader+ok` | Kill opencode server |
| `Leader+on` | New opencode session |

**Context placeholders** (use in prompts):
- `@this` - Current file/selection
- `@buffer` - Current buffer
- `@buffers` - All open buffers
- `@visible` - Visible text
- `@diagnostics` - Current diagnostics
- `@diff` - Git diff

## 🐛 Git Integration

| Shortcut | Action |
|----------|--------|
| `Leader+gc` | Git commits |
| `Leader+gs` | Git status |
| `Leader+gd` | Git diff (Diffview) |
| `Leader+gb` | Git branches |
| `]h` | Next hunk |
| `[h` | Previous hunk |

## 🪟 Window Navigation

| Shortcut | Action |
|----------|--------|
| `Ctrl+Left` | Move to left window |
| `Ctrl+Right` | Move to right window |
| `Ctrl+Up` | Move to upper window |
| `Ctrl+Down` | Move to lower window |
| `Ctrl+Tab` | Next buffer |
| `Ctrl+Shift+Tab` | Previous buffer |

## 📋 Clipboard (System)

| Shortcut | Action |
|----------|--------|
| `Leader+y` | Yank to system clipboard |
| `Leader+Y` | Yank line to system clipboard |
| `Leader+p` | Paste from system clipboard |
| `Leader+P` | Paste before cursor |

## ⚡ Diagnostics & Quickfix

| Shortcut | Action |
|----------|--------|
| `Leader+xx` | Toggle Trouble |
| `Leader+xd` | Toggle diagnostics |
| `Leader+xq` | Open quickfix list |
| `Leader+xl` | Open location list |

## 🔄 Toggle Features

| Shortcut | Action |
|----------|--------|
| `Leader+tt` | Toggle terminal |
| `Leader+la` | Toggle autopairs |
| `Leader+lw` | Toggle wrap |
| `Leader+lc` | Toggle cursorline |
| `Leader+li` | Toggle relative numbers |
| `Leader+lf` | Toggle folds |
| `Leader+h` | Clear search highlight |

## 📝 Workspace & LSP

| Shortcut | Action |
|----------|--------|
| `Leader+wa` | Add workspace folder |
| `Leader+wr` | Remove workspace folder |
| `Leader+wl` | List workspace folders |
| `Leader+ds` | Document symbols |
| `Leader+ws` | Workspace symbols |
| `Leader+ai` | Incoming calls |
| `Leader+ao` | Outgoing calls |

## 🎯 Quit & Save

| Shortcut | Action |
|----------|--------|
| `Leader+q` | Quit all |
| `Leader+qq` | Quit all |
| `Leader+qw` | Save and quit |
| `Leader+qc` | Force quit |

## 🔧 Essential Vim Commands

| Command | Action |
|---------|--------|
| `:w` | Save |
| `:q` | Quit |
| `:q!` | Force quit |
| `:wq` | Save and quit |
| `:e <file>` | Edit/open file |
| `:sp <file>` | Open file in horizontal split |
| `:vsp <file>` | Open file in vertical split |
| `:terminal` | Open terminal |
| `:Mason` | Open Mason package manager |
| `:Lazy` | Open Lazy plugin manager |
| `:checkhealth` | Check Neovim health |

## 🎨 Navigation Basics

| Key | Action |
|-----|--------|
| `h/j/k/l` | Left/Down/Up/Right |
| `w` | Next word |
| `b` | Previous word |
| `0` | Start of line |
| `$` | End of line |
| `gg` | Top of file |
| `G` | Bottom of file |
| `Ctrl+d` | Half page down |
| `Ctrl+u` | Half page up |
| `Ctrl+f` | Full page down |
| `Ctrl+b` | Full page up |

## ✍️ Editing Basics

| Key | Action |
|-----|--------|
| `i` | Insert before cursor |
| `a` | Insert after cursor |
| `I` | Insert at start of line |
| `A` | Insert at end of line |
| `o` | Open line below |
| `O` | Open line above |
| `x` | Delete character |
| `dd` | Delete line |
| `yy` | Yank (copy) line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `.` | Repeat last command |

## 🔍 Search & Replace

| Command | Action |
|---------|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `:s/old/new` | Replace first occurrence on line |
| `:s/old/new/g` | Replace all on line |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all with confirmation |

## 📦 Installed LSPs

| Language | LSP Server | Status |
|----------|-----------|--------|
| TypeScript/JavaScript | typescript-language-server, eslint | ✅ |
| Python | pylsp, ruff, black, isort | ✅ |
| Java | jdtls (via Mason) | ✅ |
| Lua | lua-language-server | ✅ |
| Dart/Flutter | dartls (via Mason) | ✅ |
| HTML/CSS | html-lsp, css-lsp | ✅ |
| JSON | json-lsp | ✅ |
| YAML | yaml-language-server | ✅ |
| Markdown | marksman | ✅ |
| Bash | bash-language-server | ✅ |

## 🎯 Key Differences from VSCode

| VSCode | LazyVim | Notes |
|--------|---------|-------|
| Ctrl+C/V/X | `y/p/d` | Vim uses yank/paste/delete |
| Ctrl+Z | `u` | Undo in normal mode |
| Ctrl+Shift+Z | `Ctrl+r` | Redo |
| Ctrl+F | `/` | Search with `/` |
| Ctrl+H | `:s/old/new/g` | Find and replace |
| F12 | `gd` | Go to definition |
| Shift+F12 | `gr` | Go to references |
| F2 | `Leader+rn` | Rename symbol |
| Ctrl+` | `Leader+tt` | Toggle terminal |
| Ctrl+B | `Leader+e` | Toggle sidebar |

## 💡 Pro Tips

1. **Flash.nvim** - Press `s` to jump to any visible location with 2 keystrokes
2. **Which-Key** - Press any key and wait to see available commands
3. **Auto-save** - Files auto-save on focus loss, buffer leave, or insert leave
4. **Relative numbers** - Use `3j` to go down 3 lines, `5k` to go up 5
5. **Visual mode** - Press `v` to select text, then operate on it
6. **Command mode** - Press `:` to enter commands
7. **Oil.nvim** - File explorer that lets you edit files like a buffer
8. **Snacks Picker** - Fast fuzzy finder for files, grep, buffers, etc.

## 📚 Learning Resources

- `:Tutor` - Built-in Neovim tutorial
- `:help` - Access documentation
- `:checkhealth` - Verify setup is working
- `:Mason` - Manage LSP servers and tools
- `:Lazy` - Manage plugins

## ⚙️ Configuration Location

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua         # Plugin manager config
│   │   ├── options.lua      # Neovim options
│   │   ├── keymaps.lua      # Custom keymaps
│   │   └── autocmds.lua     # Auto commands
│   └── plugins/
│       ├── example.lua      # Main plugin config
│       └── opencode.lua     # Opencode integration
```
