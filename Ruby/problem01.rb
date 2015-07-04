#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Proc
  def self_curry
    self.curry.call(self)
  end
end


def problem01_for(list)
  sum = 0
  for i in list
    sum += i
  end
  return sum
end


def problem01_while(list)
  sum = 0
  i = 0
  while i < list.length
    sum += list[i]
    i += 1
  end
  return sum
end


def problem01_recursion(list)
  return lambda {|f, i|
    i < list.length ? list[i] + f.call(f, i + 1) : 0
  }.self_curry.call(0)
end


if __FILE__ == $0
  LIST = [3, 5, 1, 2, 9]
  puts problem01_for(LIST)
  puts problem01_while(LIST)
  puts problem01_recursion(LIST)
end
