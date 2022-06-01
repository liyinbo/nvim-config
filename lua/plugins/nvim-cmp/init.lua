local cmp = require'cmp'

cmp.setup {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, { { name = 'buffer' },
       { name = 'path' }
    }),
  mapping = cmp.mapping.preset.insert({
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
  }),
}

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
      { name = 'cmdline' }
    })
})
