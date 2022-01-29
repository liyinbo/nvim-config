local cmp = require'cmp'

cmp.setup {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, { { name = 'buffer' },
       { name = 'path' }
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
