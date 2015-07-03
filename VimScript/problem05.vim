" Write a program that outputs all possibilities to put + or - or nothing
" between the numbers 1, 2, ..., 9 (in this order) such that the result is
" always 100. For example: 1 + 2 + 34 - 5 + 67 - 8 + 9 = 100.

function! s:problem05(nrlist, oplist, answer) abort
  if len(a:nrlist) == 0
    return []
  else
    let exprlist = []
    let expr = string(a:nrlist[0])
    call s:make_exprs(exprlist, expr, 1, a:nrlist, a:oplist, a:answer)
    return exprlist
  endif
endfunction

function! s:make_exprs(exprlist, expr, i, nrlist, oplist, answer) abort
  if a:i < len(a:nrlist)
    for op in a:oplist
      call s:make_exprs(a:exprlist, a:expr . op . a:nrlist[a:i], a:i + 1, a:nrlist, a:oplist, a:answer)
    endfor
  elseif eval(a:expr) == a:answer
    call add(a:exprlist, a:expr)
  endif
endfunction

let s:ANSWER = 100
for s:expr in s:problem05(range(1, 9), [' + ', ' - ', ''], s:ANSWER)
  echo printf("%s = %d", s:expr, s:ANSWER)
endfor
