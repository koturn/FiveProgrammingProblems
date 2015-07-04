#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

def problem02(list1, list2)
  if list1.length > list2.length
    list1, list2 = list2, list1
  end
  list1.zip(list2).flatten() + list2[list1.length..list2.length]
end


if __FILE__ == $0
  p problem02(['a', 'b', 'c'], [1, 2, 3])
end
