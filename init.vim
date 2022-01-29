let g:config_files = [
      \ 'plugins.vim',
      \ 'options.vim',
      \ 'themes.vim',
      \ 'autocommands.vim',
      \ 'mappings.vim',
      \ ]

for s:fname in g:config_files
    execute printf('source %s/core/%s', stdpath('config'), s:fname)
    let override_path = printf('%s/override/%s', stdpath('config'), s:fname)
    if filereadable(override_path)
      execute printf('source %s', override_path)
    endif
endfor
