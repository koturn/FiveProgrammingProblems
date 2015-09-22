#!/usr/bin/env python
# -*- coding: utf-8 -*-

def problem05(nrlst, oplst, answer):
    if len(nrlst) == 0:
        return []
    else:
        exprlst = []
        def _problem05(expr, i):
            if i < len(nrlst):
                for op in oplst:
                    _problem05(expr + op + str(nrlst[i]), i + 1)
            elif eval(expr) == answer:
                exprlst.append(expr)
        _problem05(str(nrlst[0]), 1)
        return exprlst


if __name__ == '__main__':
    ANSWER = 100
    for expr in problem05(range(1, 10), [' + ', ' - ', ''], ANSWER):
        print expr, '=', ANSWER
