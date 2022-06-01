local lspconfig = require'lspconfig'
lspconfig.sourcekit.setup{
  filetypes = { "swift", "objective-c", "objective-cpp" },
  root_dir = lspconfig.util.root_pattern("*.xcworkspace", ".git")
}
