#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Proc
  def self_curry
    self.curry.call(self)
  end
end


def problem05(nrlist, oplist, answer)
  if nrlist.length == 0
    return []
  else
    exprlist = []
    lambda {|f, expr, i|
      if i < nrlist.length
        oplist.each {|op|
          f.call(f, expr + op + nrlist[i].to_s, i + 1)
        }
      elsif eval(expr) == answer
        exprlist.push(expr)
      end
    }.self_curry.call(nrlist[0].to_s, 1)
    return exprlist
  end
end


if __FILE__ == $0
  ANSWER = 100
  problem05((1..9).to_a, [' + ', ' - ', ''], ANSWER).each {|expr|
    puts expr + ' = ' + ANSWER.to_s
  }
end
