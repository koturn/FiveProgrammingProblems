#!/usr/bin/env python
# -*- coding: utf-8 -*-

def problem03(n):
    if n < 1:
        return []
    elif n == 1:
        return [0]
    else:
        retlst = [0, 1]
        for i in range(len(retlst) - 1, n - 1):
            retlst.append(retlst[i] + retlst[i - 1])
        return retlst


if __name__ == '__main__':
    for n in problem03(100):
        print n
