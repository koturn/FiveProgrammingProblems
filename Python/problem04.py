#!/usr/bin/env python
# -*- coding: utf-8 -*-

def problem04(lst):
    return int(''.join(sorted(map(str, lst), reverse=True)))


if __name__ == '__main__':
    print problem04([50, 2, 1, 9])
