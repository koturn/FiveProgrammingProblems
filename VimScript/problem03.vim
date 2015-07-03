" Write a function that computes the list of the first 100 Fibonacci numbers.
" By definition, the first two numbers in the Fibonacci sequence are 0 and 1,
" and each subsequent number is the sum of the previous two. As an example,
" here are the first 10 Fibonnaci numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, and
" 34.

function! s:problem03(n) abort
  if a:n < 1
    return []
  elseif a:n == 1
    return [0]
  else
    let retlist = [0, 1]
    for i in range(a:n - 2)
      call add(retlist, retlist[len(retlist) - 1] + retlist[len(retlist) - 2])
    endfor
    return retlist
  endif
endfunction

echo s:problem03(10)
