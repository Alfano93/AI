#!/usr/bin/python
import eqparser 
import math_fun as math
def parse():
    try:
        s = raw_input('eq > ')   # use input() on Python 3
    except EOFError:
        print
    s1 = s.replace(" ","")
    s1 = math.like_terms(s1)
    s1 = s1.replace(" ","")
    #print("in parse: " + str(s1)) 
    p = eqparser.parse(s1)
    print "This is parsed as: " + repr(p)
    print "In infix form: " + str(p)
    return p

def reparse(expression):
    parse_term = math.like_terms(expression)
    parse_term = parse_term.replace(" ","")
    #print("in reparse:" + str(parse_term))
    p = eqparser.parse(parse_term)
    print"This is parsed as: " + repr(p)
    print "In infix form: " + str(p)
    return p
