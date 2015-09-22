#!/usr/bin/env python
# -*- coding: utf-8 -*-

def problem01_for(lst):
    sumval = 0
    for i in lst:
        sumval += i
    return sumval


def problem01_while(lst):
    sumval = 0
    i = 0
    while i < len(lst):
        sumval += lst[i]
        i += 1
    return sumval


def problem01_recursion(lst):
    def _problem01_recursion(i):
        return lst[i] + _problem01_recursion(i + 1) if i < len(lst) else 0
    return _problem01_recursion(0)


if __name__ == '__main__':
    LST = range(1, 11)
    print problem01_for(LST)
    print problem01_while(LST)
    print problem01_recursion(LST)
