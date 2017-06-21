#!/usr/bin/python

import sys

def is_member():
    x = raw_input("Enter a value that must be checked:")
    a = raw_input("Enter a list of values:")
    for i in a:
        if x == str(i):
            print '"x" is a member of list "a"'
            return True
        else:
            print 'x is not a memebt of list "a"'
            return False

if __name__=="__main__":
    is_member()
