# Neovim Config Cheat Sheet

Leader key: `<space>`

## Core Vim

### Modes

| Keys    | Action                           |
| ------- | -------------------------------- |
| `i`     | Insert before cursor             |
| `a`     | Insert after cursor              |
| `I`     | Insert at start of line          |
| `A`     | Insert at end of line            |
| `o`     | Open new line below, insert mode |
| `O`     | Open new line above, insert mode |
| `v`     | Visual (character) mode          |
| `V`     | Visual line mode                 |
| `<C-v>` | Visual block mode                |
| `Esc`   | Return to normal mode            |

### Movement

| Keys              | Action                                  |
| ----------------- | --------------------------------------- |
| `h j k l`         | Left / down / up / right                |
| `w` / `b`         | Next / previous word start              |
| `e`               | End of word                             |
| `0` / `^`         | Start of line (col 0 / first non-blank) |
| `$`               | End of line                             |
| `gg` / `G`        | Top / bottom of file                    |
| `{n}G`            | Go to line `{n}`                        |
| `%`               | Jump to matching bracket                |
| `{` / `}`         | Previous / next paragraph               |
| `<C-d>` / `<C-u>` | Half page down / up                     |

### Editing

| Keys          | Action                                    |
| ------------- | ----------------------------------------- |
| `x`           | Delete character under cursor             |
| `dd`          | Delete (cut) line                         |
| `dw`          | Delete word                               |
| `d$`          | Delete to end of line                     |
| `yy`          | Yank (copy) line                          |
| `yw`          | Yank word                                 |
| `p` / `P`     | Paste after / before cursor               |
| `cc`          | Change (delete + insert) whole line       |
| `cw`          | Change word                               |
| `r{x}`        | Replace character under cursor with `{x}` |
| `J`           | Join line below to current line           |
| `u` / `<C-r>` | Undo / redo                               |
| `.`           | Repeat last change                        |

### Visual mode

| Keys      | Action                      |
| --------- | --------------------------- |
| `d`       | Delete selection            |
| `y`       | Yank selection              |
| `c`       | Change selection            |
| `>` / `<` | Indent / unindent selection |
| `~`       | Toggle case of selection    |

### Search & replace

| Keys             | Action                                      |
| ---------------- | ------------------------------------------- |
| `/pattern`       | Search forward                              |
| `?pattern`       | Search backward                             |
| `n` / `N`        | Repeat search (same / opposite direction)   |
| `*` / `#`        | Search word under cursor forward / backward |
| `:%s/old/new/g`  | Replace all `old` with `new` in file        |
| `:%s/old/new/gc` | Same, with confirmation per match           |

### Files & buffers

| Keys / Command      | Action                 |
| ------------------- | ---------------------- |
| `:w`                | Save                   |
| `:q`                | Quit                   |
| `:wq` / `ZZ`        | Save and quit          |
| `:q!`               | Quit without saving    |
| `:e {file}`         | Open a file            |
| `:bnext` / `:bprev` | Next / previous buffer |

## Plugins

| Plugin                                                                                     | Category   | Purpose                                                                                                     |
| ------------------------------------------------------------------------------------------ | ---------- | ----------------------------------------------------------------------------------------------------------- |
| `lazy.nvim`                                                                                | Core       | Plugin manager                                                                                              |
| `tpope/vim-sleuth`                                                                         | Editing    | Auto-detects tabstop/shiftwidth                                                                             |
| `windwp/nvim-autopairs`                                                                    | Editing    | Auto-closes brackets/quotes; auto-inserts `(` after confirming a function completion                        |
| `lukas-reineke/indent-blankline.nvim` (ibl)                                                | Editing    | Indentation guide lines, incl. on blank lines                                                               |
| `echasnovski/mini.nvim`                                                                    | Editing    | `mini.ai` (textobjects), `mini.surround`, `mini.statusline`                                                 |
| `folke/todo-comments.nvim`                                                                 | Editing    | Highlights TODO/NOTE/etc.                                                                                   |
| `lewis6991/gitsigns.nvim`                                                                  | Git        | Gutter signs + hunk stage/reset/preview/blame keymaps                                                       |
| `nvim-neo-tree/neo-tree.nvim`                                                              | Files      | Sidebar file explorer                                                                                       |
| `nvim-telescope/telescope.nvim` (+ fzf-native, ui-select, web-devicons)                    | Fuzzy find | File/grep/help/symbol search                                                                                |
| `neovim/nvim-lspconfig` (+ mason.nvim, mason-lspconfig, mason-tool-installer, fidget.nvim) | LSP        | Language servers, install/manage, progress UI                                                               |
| `folke/lazydev.nvim`                                                                       | LSP        | Lua LSP awareness of Neovim runtime API                                                                     |
| `hrsh7th/nvim-cmp` (+ LuaSnip, cmp-nvim-lsp, cmp-path, cmp-nvim-lsp-signature-help)        | Completion | Autocomplete engine + sources                                                                               |
| `stevearc/conform.nvim`                                                                    | Formatting | Format-on-save + manual format                                                                              |
| `nvim-treesitter/nvim-treesitter`                                                          | Syntax     | Highlighting/indent                                                                                         |
| `sainnhe/everforest`                                                                       | Theme      | Colorscheme (dark, medium)                                                                                  |
| `mfussenegger/nvim-dap` (+ dap-ui, nvim-nio, mason-nvim-dap, dap-go)                       | Debugging  | DAP debugger, Go-focused                                                                                    |
| `MeanderingProgrammer/render-markdown.nvim`                                                | Markdown   | In-buffer markdown rendering — sample keymaps are commented out, so none are active                         |
| `mfussenegger/nvim-lint`                                                                   | Linting    | Runs linters (markdownlint for markdown) on `BufEnter`/`BufWritePost`/`InsertLeave`; no keybindings defined |

## Keybindings

### General

| Keys         | Mode     | Action                                                 |
| ------------ | -------- | ------------------------------------------------------ |
| `<Esc>`      | Normal   | Clear search highlight                                 |
| `<leader>q`  | Normal   | Open diagnostic quickfix list                          |
| `<Esc><Esc>` | Terminal | Exit terminal mode                                     |
| `\`          | Normal   | Reveal Neo-tree; inside the tree window, `\` closes it |

### Window navigation

| Keys                                  | Action                                |
| ------------------------------------- | ------------------------------------- |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Focus left / down / up / right window |

### Search / Telescope (`<leader>s...`)

| Keys               | Action                            |
| ------------------ | --------------------------------- |
| `<leader>sh`       | Search help tags                  |
| `<leader>sk`       | Search keymaps                    |
| `<leader>sf`       | Search files                      |
| `<leader>ss`       | Search built-in Telescope pickers |
| `<leader>sw`       | Search current word               |
| `<leader>sg`       | Live grep                         |
| `<leader>sd`       | Search diagnostics                |
| `<leader>sr`       | Resume last search                |
| `<leader>s.`       | Recent files                      |
| `<leader>s/`       | Live grep in open files           |
| `<leader>sn`       | Search Neovim config files        |
| `<leader><leader>` | List open buffers                 |
| `<leader>/`        | Fuzzy search current buffer       |

### LSP (buffer-local, active once a server attaches)

| Keys         | Mode            | Action              |
| ------------ | --------------- | ------------------- |
| `gd`         | Normal          | Goto definition     |
| `gD`         | Normal          | Goto declaration    |
| `gr`         | Normal          | Goto references     |
| `gI`         | Normal          | Goto implementation |
| `<leader>D`  | Normal          | Type definition     |
| `<leader>ds` | Normal          | Document symbols    |
| `<leader>ws` | Normal          | Workspace symbols   |
| `<leader>rn` | Normal          | Rename              |
| `<leader>ca` | Normal + Visual | Code action         |
| `<leader>th` | Normal          | Toggle inlay hints  |

### Formatting

| Keys        | Action        |
| ----------- | ------------- |
| `<leader>f` | Format buffer |

### Completion (insert mode)

| Keys              | Action                                    |
| ----------------- | ----------------------------------------- |
| `<C-n>` / `<C-p>` | Next / previous item                      |
| `<C-y>`           | Confirm                                   |
| `<C-Space>`       | Trigger completion manually               |
| `<C-b>` / `<C-f>` | Scroll docs back/forward                  |
| `<C-l>` / `<C-h>` | Jump forward/back in snippet placeholders |

### Debugging (DAP)

| Keys        | Action                                             |
| ----------- | -------------------------------------------------- |
| `<F5>`      | Start/Continue                                     |
| `<F1>`      | Step Into                                          |
| `<F2>`      | Step Over                                          |
| `<F3>`      | Step Out                                           |
| `<F7>`      | Toggle DAP UI (see last session result)            |
| `<leader>b` | Toggle breakpoint                                  |
| `<leader>B` | Set conditional breakpoint (prompts for condition) |

### Git (gitsigns)

| Keys         | Mode            | Action                                             |
| ------------ | --------------- | -------------------------------------------------- |
| `]c`         | Normal          | Next hunk (falls back to native `]c` in diff mode) |
| `[c`         | Normal          | Previous hunk (same fallback)                      |
| `<leader>hs` | Normal + Visual | Stage hunk (visual: stage selected range)          |
| `<leader>hr` | Normal + Visual | Reset hunk (visual: reset selected range)          |
| `<leader>hS` | Normal          | Stage entire buffer                                |
| `<leader>hR` | Normal          | Reset entire buffer                                |
| `<leader>hu` | Normal          | Undo stage hunk                                    |
| `<leader>hp` | Normal          | Preview hunk                                       |
| `<leader>hb` | Normal          | Blame line                                         |
| `<leader>hd` | Normal          | Diff against index                                 |
| `<leader>hD` | Normal          | Diff against last commit                           |
| `<leader>tb` | Normal          | Toggle current-line blame                          |
| `<leader>tD` | Normal          | Toggle inline preview of deleted lines             |
