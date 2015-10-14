import re
import math_fun as math

#forms of equations I know how to solve
quadratic1 = re.compile('\d+=\d+\*\w\^2[+-]\d+\*\w[+-]\d+')
quadratic2 = re.compile('\d+=\d+\*\w\^2[+-]\d+')
linear     = re.compile('\d+=\d+[*/]\w[+-]\d+')
distribute = re.compile('\d+\*\((...)\)')
sine       = re.compile('sin\((...*)\)')
cosine     = re.compile('cos\((...*)\)')
tangent    = re.compile('tan\((...*\))')
sin_sqr    = re.compile('sin\((...*\))\^2')
cos_sqr    = re.compile('cos\((...*\))\^2')
tan_sqr    = re.compile('tan\((...*\))\^2')
log        = re.compile('log\((...*)\)')
inverse    = re.compile('inv\((...*)\)')


#parts of equations that I can manipulate
squared   = re.compile('\d+[*/][a-d]|[f-h]|[j-z]\^2')
exponent  = re.compile('\d+\*\w\^\d+|[\+\-\*/]\d+\*\w\^\d+')
foil1     = re.compile('\w[+-]\d+\*\w[+-]\d+')
foil2     = re.compile('[^\^]\d+[/+/-][abcdxyz]\*\d+[+-][abcdxyz]')
fraction  = re.compile('\d+[/]\d+|\d+\*\w[/]\d+\*\w|\w[/]\w')
arith     = re.compile('(\d+[\^*/+-]\d+)')              #values only
var_arith = re.compile('\d+[*/][abcdxyz][*/+-]\d+[*/][abcdxyz]')             

#arith actions
multiply = re.compile('\d+\*\d+')
divide   = re.compile('\d+/\d+')
add      = re.compile('\d+\+\d+')
subtract = re.compile('\d+\-\d+')

var_multiply = re.compile('\d+\*[abcdxyz]\*\d+\*[abcdxyz]')
var_divide   = re.compile('\d+\*[abcdxyz]/\d+\*[abcdxyz]')
var_add      = re.compile('\d+\*[abcdxyz]\+\d+\*[abcdxyz]')
var_subtract = re.compile('\d+\*[abcdxyz]\-\d+\*[abcdxyz]')

#parts of the equation
variable     = re.compile('\A\d+\*[abcdxyz][\+\-\*/]|[\+\-]\d+\*[abcdxyz]|\d+\*[abcdxyz]')                   #'e' and 'i' ommited due to symbolic meaning
single_variable = re.compile('^\d+[a-d]|[f-h]|[j-z][0]') #look for single variables to add 1* in front
coef         = re.compile('[\+\-]\d+(?!\*\w)|\A\d+[\+\-]')                         #the constants
symbol       = re.compile('[\^*/+-]')                    #the operations
pie          = re.compile('\d+pi|\wpi')                  #pi symbol
value_i      = re.compile('\d+i')                        #square root -1
euler_num    = re.compile('\d+e')                        #value 'e'
negative_num = re.compile('-\d+')                        #negative numbers
float_num    = re.compile('\d+\.\d+')                    #floating point values


#functions to determine if a given expression is a match of a known problem
def match_quadratic(expression):
   #pass
    m = quadratic1.match(expression)
    if m != None:
        m = m.group()
#        print("result from quadratic1: "+str(m))
        return m
    if m == None:
        #print("Quad1 not a match")
        n = quadratic2.match(expression)
        if n != None:
            n = n.group()
#            print("result from quadratic2: "+str(n))
            return n
    return m

def match_linear(expression):
   #pass
    m = linear.match(expression)
    if m != None:
        m = m.group()   
#        print("result from linear: "+str(m))  
    return m

def match_sine(expression):
   #pass
    m = sine.match(expression)
    if m != None:
        m = m.group()
#        print("result from sine: "+str(m))
    return m

def match_distribute(expression):
    #pass
    m = distribute.match(expression)
    if m != None:
        m = m.group()
#        print("result from distribute: "+ str(m))
    return m

def match_cosine(expression):
    #pass
    m = cosine.match(expression)
    if m != None:
        m = m.group()
#        print("result from cosine: "+str(m))
    return m

def match_tangent(expression):
   #pass
    m = tangent.match(expression)
    if m != None:
        m = m.group()
#        print("result from tangent: "+str(m))
    return m

def match_trig(expression): #abstraction of all the trig functions
    #pass
    trig_responses = []
    trig_responses.append(match_sine(expression))
    trig_responses.append(match_cosine(expression))
    trig_responses.append(match_tangent(expression))
    return trig_responses

def match_sin_sqr(expression):
   #pass
    m = sin_sqr.match(expression)
    if m != None:
        m = m.group()
#        print("result from sine squared: "+str(m))
    return m

def match_cos_sqr(expression):
    #pass
    m = cos_sqr.match(expression)
    if m != None:
        m = m.group()
 #       print("result from cosine squared: "+str(m))
    return m

def match_tan_sqr(expression):
    #pass
    m = tan_sqr.match(expression)
    if m != None:
        m = m.group()
  #      print("result from tangent squared: "+str(m))
    return m

def match_trig_sqr(expression): #same as match_trig but for squares
   #pass
    trig_sqr_responses = []
    trig_sqr_responses.append(match_sin_sqr(expression))
    trig_sqr_responses.append(match_cos_sqr(expression))
    trig_sqr_responses.append(match_tan_sqr(expression))
    return trig_sqr_responses

def match_log(expression):
   #pass
    m = log.match(expression)
    if m != None:
        m = m.group()
   #     print("result from log: "+str(m))
    return m

def match_inverse(expression):
   #pass
    m = inverse.match(expression)
    if m != None:
        m = m.group()
    #    print("result from inverse "+str(m))
    return m

def match_multiply(expression):
    m = multiply.findall(expression)
    #if m != None:
     #  print("result from multiply: " + str(m))
        #value = math.multiply(m.group(1),m.group(2))
        #m = m.group() 
    return m

def match_divide(expression):
    m = divide.findall(expression) 
    #if m != None:
      #  print("result from divide: " + str(m))
        #value = math.divide(m.group(1),m.group(2))
        #return value
        #m = m.group()
    return m

def match_add(expression):
    m = add.findall(expression)
    #if m != None:
       # print("result from add: " + str(m))
        #value = math.add(m.group(1),m.group(2))
        #return value
        #m = m.group()
    return m

def match_subtract(expression):
    m = subtract.findall(expression)
    #if m != None:   
        #print("result from subtract: " + str(m))
        #value = math.sub(m.group(1),m.group(2))
        #return value
        #m = m.group()
    return m

def match_var_multiply(expression):
    m = var_multiply.findall(expression)
    #n = var_multiply.match(expression)
    #if n != None:
        #if n.group(1) != n.group(2):
            #return []
       # print "result from var mul: " + str(m)
    return m

def match_var_divide(expression):
    m = var_divide.findall(expression)
    #n = var_divide.match(expression)
    #if n != None:
        #if n.group(1) != n.group(2):
            #return []
        #print "result from var div: " + str(m)
    return m

def match_var_add(expression):
    m = var_add.findall(expression)
    #n = var_add.match(expression)
    #if n != None:
        #if n.group(1) != n.group(2):
            #return []
        #print "result from var add: " + str(m)
    return m

def match_var_subtract(expression):
    m = var_subtract.findall(expression)
    #n = var_subtract.match(expression)
    #if m != None:
         #if n.group(1) != n.group(2):
         #    return []
         #else:
         #    return n.group(0)
         #print "result from var sub: " + str(m)
    return m

def look_for_match(expression):
    #pass
    possible_matches = [] #stores the possible matches to have their 'certity' values calculated
    expression_canidate = expression.replace(" ","")
    #print("test: " +str(expression_canidate))
    possible_matches.append(["quadratic",match_quadratic(expression_canidate)])
    possible_matches.append(["distribute",match_distribute(expression_canidate)])
    possible_matches.append(["linear",match_linear(expression_canidate)])
    possible_matches.append(["trig",match_trig(expression_canidate)])
    possible_matches.append(["trig_sqr",match_trig_sqr(expression_canidate)])
    possible_matches.append(["log",match_log(expression_canidate)])
    possible_matches.append(["inverse",match_inverse(expression_canidate)])
    return possible_matches

#functions to find the parts we can manipulate
def find_squared(expression):
    #pass
    m = squared.findall(expression)
    #if len(m) != 0:
        #m = m.group()
        #print("Result from squared: " + str(m))
    return m

def find_exponent(expression):
    #pass
    m = exponent.findall(expression)
    #if len(m) != 0:
        #m = m.group()
        #print("Result from exponent: "+ str(m))
    return m

def find_foil(expression):
    #pass
    #print(expression)
    m = foil1.findall(expression)
    #print(m)
    m += foil2.findall(expression)
    #if len(m) != 0:
        #m = m.group()
        #print("Result from foil: " + str(m))
    return m

def find_fraction(expression):
    #pass
    m = fraction.findall(expression)
    #if len(m) != 0:
        #m = m.group()
        #print("Result from fraction: " + str(m))
    return m

def find_arith(expression):
    #pass
    return_array = []
    return_array.append(["multiply",match_multiply(expression)])
    return_array.append(["divide",match_divide(expression)])
    return_array.append(["add",match_add(expression)])
    return_array.append(["subtract",match_subtract(expression)]) 
    #if len(return_array) != 0:
        #print("Result from arith: " + str(return_array))
    return return_array

def find_var_arith(expression):
    #pass
    return_array = []
    return_array.append(["var_mul",match_var_multiply(expression)])
    return_array.append(["var_div",match_var_divide(expression)])
    return_array.append(["var_add",match_var_add(expression)])
    return_array.append(["var_sub",match_var_subtract(expression)])
    #if len(return_array) != 0:
        #print("Result from var_arith: " + str(return_array))
    return return_array

def find_changes(expression):
    #pass
    return_value = []
    canidate = expression.replace(" ","")
    #print("canidate: " + str(canidate))
    return_value.append(["squared",find_squared(canidate)])
    return_value.append(["exponent",find_exponent(canidate)])
    return_value.append(["foil",find_foil(canidate)])
    return_value.append(["fraction",find_fraction(canidate)])
    return_value.append(["arith",find_arith(canidate)])
    return_value.append(["var_arith",find_var_arith(canidate)])
    return return_value

#Functions to find the parts of the equation
def find_variable(expression):
    #pass
    m = variable.findall(expression)
    #if len(m) != 0:
        #print("Result from variable: " + str(m))
    return m

def find_single_variable(expression):
    #pass
    m = single_variable.findall(expression)
    #if len(m) != 0:
        #print("Result from single variable: " +str(m))
    return m

def find_coef(expression):
    #pass
    m = coef.findall(expression)
    #if len(m) != 0:
        #print("Result from coef: " +str(m))
    return m

def find_symbol(expression):
    #pass
    m = symbol.findall(expression)
    #if len(m) != 0:
        #print("Result from symbol: " + str(m))
    return m    

def find_pie(expression):
    #pass
    m = pie.findall(expression)
    #if len(m) != 0:
        #print("Result from pie: " + str(m))
    return m

def find_value_i(expression):
    #pass
    m = value_i.findall(expression)
    #if len(m) != 0:
        #print("Result from value_i: " + str(m))
    return m

def find_eular_num(expression):
    #pass
    m = euler_num.findall(expression)
    #if len(m) != 0:
        #print("Result from eular_num: " +str(m))
    return m

def find_negative_num(expression):
    #pass
    m = negative_num.findall(expression)
    #if len(m) != 0:
        #print("Result from negative_num: " + str(m))
    return m

def find_float_num(expression):
    #pass
    m = float_num.findall(expression)
    #if len(m) != 0:
        #print("Result from floating num: " + str(m))
    return m

def find_parts(expression):
    #pass
    parts = []
    canidate = expression.replace(" ","")
    parts.append(find_variable(canidate))
    parts.append(find_single_variable(canidate))
    parts.append(find_coef(canidate))
    parts.append(find_symbol(canidate))
    parts.append(find_pie(canidate))
    parts.append(find_value_i(canidate))
    parts.append(find_eular_num(canidate))
    parts.append(find_negative_num(canidate))
    parts.append(find_float_num(canidate))
    return parts
