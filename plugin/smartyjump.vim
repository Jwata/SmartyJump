"============================================================================
"File:        smartyjump.vim
"Description: vim plugin for jump to smarty include file
"Maintainer:  Junji Watanabe <watanabe0621@gmail.com>
"Version:     0.0.1
"Last Change: 2012/11/05
"License:
"
"============================================================================

function! SmartyJump()
  let current_path = expand("%:p")
  let tpl_path = '/tpl/' . expand("<cfile>")
  let include_file_path = substitute(current_path, '/*/\<tpl/.*', tpl_path, '')
  if filereadable(include_file_path)
    execute 'edit ' . include_file_path
  else
    echohl ErrorMsg
    echo 'no such file ' . include_file_path
    echohl None
  endif
endfunction
"nnoremap <silent> <space>b :e#<CR>
"nnoremap <silent> <space>i :call SmartyJump()<CR>

