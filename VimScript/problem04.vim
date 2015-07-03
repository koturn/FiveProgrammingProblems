" Write a function that given a list of non negative integers, arranges them
" such that they form the largest possible number. For example, given
" [50, 2, 1, 9], the largest formed number is 95021.

function! s:problem04(list) abort
  return str2nr(join(reverse(sort(map(copy(a:list), 'string(v:val)'))), ''))
endfunction

echo s:problem04([50, 2, 1, 9])
