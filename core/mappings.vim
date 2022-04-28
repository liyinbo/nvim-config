"Set window width fix
let g:wwm_default_fix_width = 80

let s:fix_width_windows = []

function! s:SetWindowsWidth()
  let fix_width_status = {}
  for id in s:fix_width_windows
    let winnr = win_id2win(id)
    call win_gotoid(id)
    let fix_width = &winfixwidth
    let fix_width_status[id] = fix_width
  endfor

  for id in s:fix_width_windows
    let winnr = win_id2win(id)
    call win_gotoid(id)
    let l:width = g:wwm_default_fix_width
    let l:line_number_length = 0
    if (&number)
      let l:line_number_length = strlen(line('$'))
    endif
    let l:width += l:line_number_length + 3
    execute "vertical resize " . l:width
    setlocal winfixwidth
    endfor

    for [id, status] in items(fix_width_status)
      call win_gotoid(id)
      if status
        setlocal winfixwidth
      else
        setlocal nowinfixwidth
      endif
    endfor
endfunction

function! SetFixWidthWindow()
  let current_window_id = win_getid()
  if count(s:fix_width_windows, current_window_id) == 0
    call add(s:fix_width_windows, current_window_id)
  endif
  call s:SetWindowsWidth()
endfunction

function! SetVariableWidthWindow()
  let current_window_id = win_getid()
  if count(s:fix_width_windows, current_window_id) > 0
    call remove(s:fix_width_windows, index(s:fix_width_windows, current_window_id))
  endif
  call s:SetWindowsWidth()
endfunction

silent nnoremap <Leader>fw :call SetFixWidthWindow()<CR>
silent nnoremap <Leader>vw :call SetVariableWidthWindow()<CR>

silent nnoremap <Leader>nt :NvimTreeOpen<CR>:set nowinfixwidth<CR>
silent nnoremap <leader>ff <cmd>Telescope find_files<cr>
silent nnoremap <leader>fg <cmd>Telescope live_grep<cr>
silent nnoremap <leader>fb <cmd>Telescope buffers<cr>
silent nnoremap <leader>fh <cmd>Telescope help_tags<cr>
silent nnoremap <leader>fe <cmd>Telescope file_browser<cr>

tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
