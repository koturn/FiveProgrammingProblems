#!/usr/bin/env python
# -*- coding: utf-8 -*-

def problem02(lst1, lst2):
    retlst = []
    for e1, e2 in zip(lst1, lst2):
        retlst.append(e1)
        retlst.append(e2)
    return retlst + lst1[len(lst2) :] + lst2[len(lst1) :]


if __name__ == '__main__':
    print problem02(['a', 'b', 'c'], [1, 2, 3])
