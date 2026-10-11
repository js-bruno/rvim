return {
  'saghen/blink.cmp',
  dependencies = {
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  },
  version = '*',
  opts = {
    snippets = { preset = 'luasnip' },
    signature = { enabled = true },
    completion = {
      ghost_text = { enabled = true },
      menu = { auto_show = false },
    },
    keymap = {
      preset = 'super-tab',
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-e>'] = { 'hide' },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        path = { opts = { get_cwd = vim.uv.cwd } },
      },
    },
  },
  opts_extend = { 'sources.default' },
}
