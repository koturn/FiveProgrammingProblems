" Write a function that combines two lists by alternatingly taking elements.
" For example: given the two lists [a, b, c] and [1, 2, 3], the function
" should return [a, 1, b, 2, c, 3].

function! s:problem02(list1, list2) abort
  if len(a:list1) <= len(a:list2)
    let list1 = a:list1
    let list2 = a:list2
  else
    let list2 = a:list1
    let list1 = a:list2
  endif
  let retlist = []
  for i in range(len(list1))
    call add(retlist, list1[i])
    call add(retlist, list2[i])
  endfor
  return retlist + list2[len(list1) :]
endfunction

echo s:problem02(['a', 'b', 'c'], [1, 2, 3])
