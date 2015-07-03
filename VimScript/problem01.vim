" Write three functions that compute the sum of the numbers in a given list
" using a for-loop, a while-loop, and recursion.

function! s:problem01_for(list) abort
  let sum = 0
  for i in a:list
    let sum += i
  endfor
  return sum
endfunction

function! s:problem01_while(list) abort
  let sum = 0
  let i = 0
  while i < len(a:list)
    let sum += a:list[i]
    let i += 1
  endwhile
  return sum
endfunction

function! s:problem01_recursion(list) abort
  return s:_problem01_recursion(a:list, 0)
endfunction

function! s:_problem01_recursion(list, i) abort
  return a:i < len(a:list) ? a:list[a:i] + s:_problem01_recursion(a:list, a:i + 1) : 0
endfunction

let s:LIST = range(1, 5)
echo s:problem01_for(s:LIST)
echo s:problem01_while(s:LIST)
echo s:problem01_recursion(s:LIST)
