#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

def problem04(list)
  list.map {|e|
    e.to_s
  }.sort {|a, b|
    b <=> a
  }.join.to_i
end


if __FILE__ == $0
  p problem04([50, 2, 1, 9])
end
