#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

def problem03(n)
  case n
  when 0
    return []
  when 1
    return [0]
  else
    retlist = [0] * n
    retlist[1] = 1
    for i in 2...n
      retlist[i] = retlist[i - 1] + retlist[i - 2]
    end
    return retlist
  end
end


if __FILE__ == $0
  p problem03(10)
end
