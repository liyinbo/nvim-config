scriptencoding utf-8

call plug#begin()

Plug 'puremourning/vimspector'

call plug#end()

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

lua require('lua_init')
