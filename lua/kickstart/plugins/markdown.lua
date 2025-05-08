-- Config for the markdown render from [https://github.com/MeanderingProgrammer/render-markdown.nvim]
--
-- return {
--   "MeanderingProgrammer/render-markdown.nvim",
--   dependencies = { "nvim-treesitter/nvim-treesitter" },
--   config = function()
--     require("render-markdown").setup({})
--   end,
--   ft = "markdown",  -- only loads when editing markdown files
-- }
--
-- local M = {}
--
-- M.config = function()
--   require('render-markdown').setup {
--     -- Use Treesitter for syntax highlighting (recommended)
--     renderer = 'treesitter', -- Other options include 'pandoc', 'markdown-it'
--
--     -- Set a default renderer for markdown files
--     markdown = {
--       -- The file types that should trigger markdown rendering
--       filetypes = { 'markdown', 'md' },
--
--       -- Enable automatic rendering on file save
--       auto_render = true,
--
--       -- Whether to show the rendered markdown preview (in a split or popup)
--       render_preview = true,
--
--       -- Enable code block highlighting
--       highlight_code_blocks = true,
--
--       -- Specify a custom theme for markdown previews (you can use any custom CSS theme you prefer)
--       custom_css = nil, -- You can link a custom CSS file here
--
--       -- Enable or disable rendering inline HTML
--       render_inline_html = true,
--     },
--
--     -- Pandoc rendering settings (only if you choose the 'pandoc' renderer)
--     pandoc = {
--       -- Command used to invoke pandoc
--       pandoc_command = 'pandoc',
--       -- Default output format (HTML, LaTeX, etc.)
--       output_format = 'html',
--       -- Whether to generate a table of contents in the output
--       toc = true,
--     },
--
--     -- Customize markdown preview popup window settings
--     popup = {
--       width = 80, -- Width of the popup window
--       height = 40, -- Height of the popup window
--       border = 'rounded', -- Use 'single', 'double', 'rounded' or 'none' for popup borders
--       position = 'top', -- 'top', 'bottom', 'left', or 'right' for position of preview
--     },
--
--     -- Enable or disable automatic updates of markdown render when the file is saved
--     auto_refresh = true,
--
--     -- Customize how links and images are rendered
--     links = {
--       -- Open links in a browser when clicked (can be 'browser', 'split', 'float', or 'none')
--       open_in_browser = true,
--     },
--
--     -- Keybindings for markdown rendering actions (you can customize these as you prefer)
--     keymaps = {
--       -- Trigger markdown rendering preview
--       ['<leader>mp'] = { '<cmd>RenderMarkdown<CR>', desc = 'Preview Markdown' },
--       -- Toggle markdown preview window
--       ['<leader>mt'] = { '<cmd>RenderMarkdownToggle<CR>', desc = 'Toggle Markdown Preview' },
--       -- Open markdown preview in a new split
--       ['<leader>ms'] = { '<cmd>RenderMarkdownSplit<CR>', desc = 'Markdown Preview in Split' },
--       -- Refresh markdown preview
--       ['<leader>mr'] = { '<cmd>RenderMarkdownRefresh<CR>', desc = 'Refresh Markdown Preview' },
--     },
--
--     -- Enable link highlighting for URLs, images, etc.
--     highlight_links = true,
--   }
-- end
--
-- return M

return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- Syntax highlighting with Treesitter
    'nvim-tree/nvim-web-devicons', -- Icons support (devicons)
    'echasnovski/mini.nvim', -- Mini.nvim suite (optional, if you want Mini functionality)
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    -- Default config (can customize to your needs)
    -- Use the markdown previewer with default settings
    default_renderer = 'treesitter', -- Choose renderer (could be 'markdown', 'treesitter', etc.)
    max_width = 80, -- Max width for markdown rendering
    auto_open = true, -- Auto open preview when markdown file is detected
    filetypes = { 'markdown', 'md' }, -- Filetypes to enable the renderer on
    devicons = true, -- Enable devicons (icons in your markdown)
    highlight_code = true, -- Syntax highlight code blocks
    disable_folding = false, -- Disable folding if you need to see full content
    transparent = true, -- Transparent background for rendered markdown
    wrap = true, -- Enable line wrapping in rendered preview
    -- Set a border style for the preview
    border = 'rounded', -- Border around preview ('single', 'double', 'rounded', 'solid')
    -- Enable additional mini.nvim functionalities if using it
    mini = {
      enabled = true, -- Enable mini.nvim's functionality if needed
      icons = true, -- Display icons for markdown elements (headings, links, etc.)
    },
    -- Additional options for rendering if needed
    -- More config options could be added here depending on what the plugin allows
  },
}
