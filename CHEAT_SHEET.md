# Neovim Keybinding Cheat Sheet

**Leader key:** `<Space>` &nbsp;&nbsp;**Local leader:** `<Space>`

---

## 1. Modes (core)

| Key | Action |
|---|---|
| `i` / `a` | Insert before / after cursor |
| `I` / `A` | Insert at start / end of line |
| `o` / `O` | Open new line below / above |
| `v` / `V` / `Ctrl-v` | Visual / Visual line / Visual block |
| `R` | Replace mode |
| `Esc` | Return to Normal mode **+ clears search highlight** (custom) |

## 2. Movement (core)

| Key | Action |
|---|---|
| `h j k l` | Left / Down / Up / Right |
| `w` / `W` | Next word / WORD |
| `b` / `B` | Previous word / WORD |
| `e` / `E` | End of word / WORD |
| `0` / `^` / `$` | Line start / first non-blank / line end |
| `gg` / `G` | Top / bottom of file |
| `{n}G` or `:n` | Go to line n |
| `%` | Jump to matching bracket |
| `Ctrl-d` / `Ctrl-u` | Half page down / up |
| `Ctrl-f` / `Ctrl-b` | Full page down / up |
| `{` / `}` | Previous / next paragraph |
| `f{c}` / `F{c}` | Find char forward / backward |
| `t{c}` / `T{c}` | Till char forward / backward |
| `;` / `,` | Repeat last f/t forward / backward |
| `*` / `#` | Search word under cursor forward / backward |
| `m{a}` | Set mark `a` |
| `` `{a} `` / `'{a}` | Jump to mark (exact pos / line) |
| `Ctrl-o` / `Ctrl-i` | Back / forward in jumplist |

## 3. Editing (core)

| Key | Action |
|---|---|
| `x` / `X` | Delete char under / before cursor |
| `dd` / `D` | Delete line / to end of line |
| `yy` / `Y` | Yank line |
| `p` / `P` | Paste after / before |
| `u` / `Ctrl-r` | Undo / Redo |
| `.` | Repeat last change |
| `cc` / `C` | Change line / to end of line |
| `r{c}` | Replace single char |
| `~` | Toggle case |
| `J` | Join lines |
| `>>` / `<<` | Indent / outdent line |
| `==` / `gg=G` | Auto-indent line / whole file |

> Text objects (`ciw`, `ci'`, `dap`, etc.) are handled by **mini.ai** in this config — see §15, which extends and partly replaces the vanilla versions.

## 4. Visual Mode (core)

| Key | Action |
|---|---|
| `d` / `y` / `c` | Delete / yank / change selection |
| `>` / `<` | Indent / outdent selection |
| `gv` | Reselect last visual selection |
| `o` | Swap cursor to other end of selection |

## 5. Search, Substitute & Command-line (core)

| Key | Action |
|---|---|
| `/` / `?` | Search forward / backward |
| `n` / `N` | Repeat search, same / opposite direction |
| `:%s/old/new/g` | Substitute across file |
| `:noh` | Clear search highlight — bound to plain `<Esc>` in this config |
| `:w` / `:q` / `:wq` / `:x` | Write / quit / write+quit / write+quit-if-changed |
| `:e {file}` | Edit file |
| `:bn` / `:bp` | Next / previous buffer |

## 6. Windows, Splits & Buffers

| Key | Mode | Action | Source |
|---|---|---|---|
| `Ctrl-w s` / `Ctrl-w v` | n | Split horizontal / vertical | core |
| `Ctrl-w w` | n | Cycle windows | core |
| `Ctrl-w q` | n | Close window | core |
| `Ctrl-h` / `Ctrl-j` / `Ctrl-k` / `Ctrl-l` | n | Move focus left/down/up/right window | custom |
| `<leader><leader>` | n | Fuzzy-find open buffers (Telescope) | custom |

## 7. Diagnostics

| Key | Mode | Action |
|---|---|---|
| `<leader>q` | n | Send diagnostics to quickfix list |

## 8. Search — Telescope

### Your leader mappings (`<leader>s` group)

| Key | Mode | Action |
|---|---|---|
| `<leader>sh` | n | Search help tags |
| `<leader>sk` | n | Search keymaps |
| `<leader>sf` | n | Find files |
| `<leader>ss` | n | Select a Telescope picker |
| `<leader>sw` | n, v | Grep current word |
| `<leader>sg` | n | Live grep |
| `<leader>sd` | n | Search diagnostics |
| `<leader>sr` | n | Resume last search |
| `<leader>s.` | n | Recent files (oldfiles) |
| `<leader>sc` | n | Search commands |
| `<leader>s/` | n | Live grep in open files |
| `<leader>sn` | n | Search Neovim config files |
| `<leader>/` | n | Fuzzy search current buffer |
| `<leader><leader>` | n | Find open buffers |

### Inside any picker (Telescope's own defaults — not set in your lua files)

| Key | Mode | Action |
|---|---|---|
| `Ctrl-n`/`Down`, `Ctrl-p`/`Up` | insert | Next / previous item |
| `j` / `k`, `gg` / `G`, `H`/`M`/`L` | normal (press `Esc` first) | Navigate results |
| `<CR>` | both | Confirm selection |
| `Ctrl-x` / `Ctrl-v` / `Ctrl-t` | insert | Open selection in split / vsplit / new tab |
| `Ctrl-u` / `Ctrl-d` | insert | Scroll preview up / down |
| `Tab` | insert | Toggle selection (multi-select), move to next |
| `Ctrl-/` (insert) or `?` (normal) | both | Show all mappings for the current picker |

## 9. LSP (active only while a language server is attached)

| Key | Mode | Action |
|---|---|---|
| `grn` | n | Rename symbol |
| `gra` | n, x | Code action |
| `grD` | n | Go to declaration |
| `grr` | n | Go to references (Telescope) |
| `gri` | n | Go to implementations (Telescope) |
| `grd` | n | Go to definition (Telescope) |
| `grt` | n | Go to type definition |
| `gO` | n | Document symbols (Telescope) |
| `gW` | n | Workspace symbols (Telescope) |
| `<leader>th` | n | Toggle inlay hints *(only if server supports it)* |
| `Ctrl-t` | n | Jump back after going to definition (core tag-jump) |

## 10. Autocomplete — blink.cmp (Insert mode, `default` preset)

| Key | Action |
|---|---|
| `Ctrl-y` | Accept completion (auto-imports/expands snippet if supported) |
| `Tab` / `Shift-Tab` | Move right/left through snippet placeholders |
| `Ctrl-Space` | Open completion menu, or docs if menu already open |
| `Ctrl-n` / `Ctrl-p` or `↓` / `↑` | Next / previous item |
| `Ctrl-e` | Hide menu |
| `Ctrl-k` | Toggle signature help |

## 11. Formatting

| Key | Mode | Action |
|---|---|---|
| `<leader>f` | n, v | Format buffer (conform.nvim) |

## 12. Package Management — Mason (`:Mason` window defaults, not set in your lua files)

| Key | Action |
|---|---|
| `<CR>` | Expand package / toggle install log |
| `i` | Install package under cursor |
| `u` | Reinstall / update package under cursor |
| `U` | Update all installed packages |
| `c` | Check version of package under cursor |
| `C` | Check all packages for updates |
| `X` | Uninstall package under cursor |
| `Ctrl-c` | Cancel installation |
| `Ctrl-f` | Apply language filter |
| `g?` | Toggle help |

## 13. Git — gitsigns

| Key | Mode | Action |
|---|---|---|
| `]c` | n | Next git hunk |
| `[c` | n | Previous git hunk |
| `<leader>hs` | n, v | Stage hunk |
| `<leader>hr` | n, v | Reset hunk |
| `<leader>hS` | n | Stage buffer |
| `<leader>hu` | n | Undo stage hunk |
| `<leader>hR` | n | Reset buffer |
| `<leader>hp` | n | Preview hunk |
| `<leader>hb` | n | Blame line |
| `<leader>hd` | n | Diff against index |
| `<leader>hD` | n | Diff against last commit |
| `<leader>tb` | n | Toggle current-line blame |
| `<leader>tD` | n | Toggle inline deleted-lines preview |

## 14. Debugging — DAP

| Key | Mode | Action |
|---|---|---|
| `F5` | n | Start/continue debugging |
| `F1` | n | Step into |
| `F2` | n | Step over |
| `F3` | n | Step out |
| `F7` | n | Toggle DAP UI (view last session result) |
| `<leader>b` | n | Toggle breakpoint |
| `<leader>B` | n | Set conditional breakpoint (prompts for condition) |

## 15. File Explorer — Neo-tree

### Global (all sources — Neo-tree's own defaults, `\` is the only custom one)

| Key | Action |
|---|---|
| `\` | Reveal current file *(custom — global keymap)* |
| `<cr>` / double-click | Open |
| `<esc>` | Cancel / close preview or floating window |
| `<space>` | Toggle node (expand/collapse) |
| `<Tab>` | Select (multi-select) |
| `Ctrl-;` | Clear selection |
| `Ctrl-s` | Quick-jump (press a highlighted letter to jump to that node) |
| `P` | Toggle file preview |
| `l` | Focus preview window |
| `Ctrl-f` / `Ctrl-b` | Scroll preview down / up |
| `S` / `s` / `t` | Open in split / vsplit / new tab |
| `w` | Open with window picker |
| `C` | Close node |
| `z` | Close all nodes |
| `R` | Refresh tree |
| `a` / `A` | Add file / add directory |
| `d` | Delete |
| `T` | Move to trash |
| `u` / `U` | Undo trash / restore from trash |
| `r` | Rename |
| `y` / `x` / `p` | Copy / cut / paste (clipboard) |
| `Ctrl-r` | Clear clipboard |
| `c` / `m` | Copy / move (prompts for destination) |
| `e` | Toggle auto-expand width |
| `q` / `\` | Close window (both work — `\` added by this config) |
| `?` | Show help (all active mappings) |
| `<` / `>` | Previous / next source tab |

### Filesystem view — additional

| Key | Action |
|---|---|
| `H` | Toggle hidden files |
| `/` | Fuzzy finder (filter as you type) |
| `D` | Fuzzy finder, directories only |
| `#` | Fuzzy sort |
| `f` | Filter on submit |
| `Ctrl-x` | Clear filter |
| `<bs>` | Navigate up a directory |
| `.` | Set as root |
| `[g` / `]g` | Previous / next git-modified file |
| `i` | Show file details |
| `b` | Rename (basename only) |
| `o` then `c`/`d`/`g`/`m`/`n`/`s`/`t` | Order by: created / diagnostics / git / modified / name / size / type |

### Git Status view (`:Neotree git_status`) — additional

| Key | Action |
|---|---|
| `A` | Git add all |
| `ga` | Git add file |
| `gu` | Git unstage file |
| `gt` | Toggle stage on file |
| `gr` | Revert file |
| `gU` | Undo last commit |
| `gc` | Git commit |
| `gp` / `gl` | Git push / pull |
| `gg` | Commit and push |

## 16. Text Objects & Surround — mini.ai / mini.surround

**mini.ai** — treesitter-aware, replaces/extends vanilla text objects

| Key | Action |
|---|---|
| `a{obj}` / `i{obj}` | Around / inside object — e.g. `aw`, `iw`, `a)`, `i"`, `at` (tag), `ip`, `ap` |
| `aa` / `ii` | Around / inside **next** object *(custom remap of default `an`/`in`)* |
| `al` / `il` | Around / inside **last** (previous) object *(default, unchanged)* |
| `g[` / `g]` | Jump to left / right edge of object *(default, unchanged)* |

Common object chars: brackets `()[]{}<>` (or `b` for any bracket), quotes `'` `"` `` ` `` (or `q` for any quote), `t` tag, plus word/paragraph/sentence. Full list: `:h mini.ai-textobject-builtin`.
Examples: `dip` delete inner paragraph · `ci"` change inside quotes · `daa` delete around next object.

**mini.surround**

| Key | Action |
|---|---|
| `sa{motion/obj}{char}` | Add surrounding — e.g. `saiw)` wraps inner word in `()` |
| `sd{char}` | Delete surrounding — e.g. `sd'` |
| `sr{char}{char}` | Replace surrounding — e.g. `sr)'` |
| `sf` / `sF` | Find surrounding, cursor moves to right / left edge |
| `sh` | Highlight surrounding |
| `sn` | Update search-scope (`n_lines`) for the next command |
| `n`/`l` suffix | Target **next**/**last** surrounding instead of the one under cursor — e.g. `sdn)` deletes the next `)` pair |

## 17. Terminal Mode

| Key | Action |
|---|---|
| `Ctrl-\` `Ctrl-n` | Exit terminal mode (built-in) |
| `Esc` `Esc` | Exit terminal mode (custom shortcut, terminal-dependent) |

---

### Note on Treesitter

The `main` branch of nvim-treesitter (what this config pins to) ships **no default keymaps at all** — the old `gnn`/`grn`/`grc`/`grm` incremental-selection bindings from the legacy `master` branch were dropped in the rewrite and would need to be added manually (e.g. via a small custom function or a separate plugin) if you want that back. Same story for `render-markdown.nvim` — it only changes how markdown *displays*, it doesn't add any keymaps (e.g. no built-in checkbox-toggle binding).