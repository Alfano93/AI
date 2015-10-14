import re
import expressions as expr
import copy

def multiply(expression):
    mul = re.compile('(\d+)\*(\d+)')
    m = mul.match(expression)
    #print(m)
    if (int(m.group(1)) != float(m.group(1)) or int(m.group(2)) != float(m.group(2))):
        a = float(m.group(1))
        b = float(m.group(2))
        result = a * b
        print result
        return result
    else:
        a = int(m.group(1))
        b = int(m.group(2))
        result = a * b
        print result
        return result

def divide(expression):
    div = re.compile('(\d+)/(\d+)')
    m = div.match(expression)
    if int(m.group(2)) != 0:
        if (int(m.group(1)) != float(m.group(1)) or int(m.group(2)) != float(m.group(2))):
            a = float(m.group(1))
            b = float(m.group(2))
            result = a/b
            print result
            return result
        else:
            a = int(m.group(1))
            b = int(m.group(2))
            result = a/b
            print result
            return result
    else:
        print("DIVIDE BY 0 ERROR")
        return "error"

def sub(expression):
    sub = re.compile('(\d+)\-(\d+)')
    m = sub.match(expression)
    if (int(m.group(1)) != float(m.group(1)) or int(m.group(2)) != float(m.group(2))):
        a = float(m.group(1))
        b = float(m.group(2))
        return a - b
    else:
        a = int(m.group(1))
        b = int(m.group(2))
        return a - b

def add(expression):
    add = re.compile('(\d+)\+(\d+)')
    m = add.match(expression)
    if (int(m.group(1)) != float(m.group(1)) or int(m.group(2)) != float(m.group(2))):
        a = float(m.group(1))
        b = float(m.group(2))
        return a + b
    else:
        a = int(m.group(1))
        b = int(m.group(2))
        return a + b

def associativity(expression):
    assoc = re.compile('(\w)([+*])(\w)')
    m = assoc.match(expression)
    a = m.group(1)
    symbol = m.group(2)
    b = m.group(3)
    return (str(b)+str(symbol)+str(a))

def var_multiply(expression):
    var_mul = re.compile('(\d+)\*(\w)\*(\d+)\*(\w)')
    m = var_mul.match(expression)
    a = m.group(1)
    first_var = m.group(2)
    b = m.group(3)
    second_var = m.group(4)

    if first_var != second_var:
       print("cannot be simp,using associativity")
       return associativity(expression)
    else:
        if(int(a) != float(a) or int(b) != float(b)):
            coef = float(a) * float(b)
            return str(coef)+ "*"+ str(first_var) + "^2"
        else:
            coef = int(a) * int(b)
            return str(coef) +"*"+ str(first_var) +"^2"

def var_divide(expression):
    var_div = re.compile('(\d+)\*(\w)/(\d+)\*(\w)')
    m = var_div.match(expression)
    if m.group(3) != 0:
       if m.group(2) != m.group(4):
          print "cannot be simp"
          return expression
       else:
           a = m.group(1)
           b = m.group(3)
           if (int(a) != float(a) or int(b) != float(b)):
              return float(a)/float(b)
           else:
              return int(a)/int(b) 
    else: 
       print("Divide By 0 Error")
       return "error"

def var_add(expression):
    var_addd = re.compile('(\d+)\*(\w)\+(\d+)\*(\w)')
    m = var_addd.match(expression)
    a = m.group(1)
    first_var = m.group(2)
    b = m.group(3)
    second_var = m.group(4)
    if first_var != second_var:
       print("can't be simp,using associtivity")
       return associativity(expression)
    else:
        if (int(a) != float(a) or int(b) != float(b)):
            result_coef = float(a) + float(b)
            return str(result_coef)+"*"+str(first_var)
        else:
            result_coef = int(a) + int(b)
            return str(result_coef)+"*"+str(first_var)

def var_sub(expression):
    var_subb = re.compile('(\d+)\*(\w)\-(\d+)\*(\w)')
    m = var_subb.match(expression)
    a = m.group(1)
    first_var = m.group(2)
    b = m.group(3)
    second_var = m.group(4)
    if first_var != second_var:
       print "Cannot be simp"
       return expression
    else:
        if (int(a) != float(a) or int(b) != float(b)):
            result_coef = float(a)-float(b)
            return str(result_coef)+"*"+str(first_var)
        else:
            result_coef = int(a)-int(b)
            return str(result_coef)+"*"+str(first_var)

def associative_jumble(expression):
    add = re.compile('(\w)\+(\w)')
    mul = re.compile('(\w)\*(\w)')
    m = add.findall(expression)
    n = mul.findall(expression)
    #print("m:"+str(m))
    #print("n"+str(n))
    return ""

def like_terms(expression): 
    poseq = expression.index('=')
    #print poseq
    hold_this = expression[poseq:len(expression)]
    #print("hold_this: " + str(hold_this))
    do_this = expression[0:poseq]
    #print("do_this: " +str(do_this))
    coefs = expr.find_coef(expression)
    varis = expr.find_variable(expression)
    exps = expr.find_exponent(expression)
    #coefs = expr.find_coef(do_this)
    #varis = expr.find_variable(do_this)
    #exps = expr.find_exponent(do_this)
    front_value = re.compile('\A(\d+\*\w)([\+\-\*/])|\A(\d+)([\+\-\*/])')
    end_value = re.compile('([\+\-\*/])\d+\*\w$|([\+\-\*/])\d+$')
    #m = front_value.match(expression)
    m = front_value.search(expression)
    #n = end_value.search(do_this)
    print m
    #print n
    if m == None:
        return expression
    if m.group(1) == None:
        val = m.group(3)
        symbol = m.group(4)
    else:
        val = m.group(1)
        symbol = m.group(2)

   # val = m.group(0)
   # end = n.group(0)
   # if n.group(1) == None:
   #    end += n.group(2)
   # else:
   #    end += n.group(1)

    #symbol = val[len(val)-1]
    new_val = copy.deepcopy(val)
    #new_val = new_val.replace(symbol,"")
    #new_val = "+" + new_val
    #print(new_val)  
    #print(val)  
    if val in coefs:
        pos = coefs.index(str(val))
        #print pos
        coefs[pos] = new_val
    elif val in varis:
        pos = varis.index(val)
        #print pos
        varis[pos] = new_val
    elif val in exps:
        pos = varis.index(val)
        exps[pos] = new_val
    
    if (len(coefs) == 1 and len(varis) == 0 and len(exps) == 0):
        return expression
    if (len(coefs) == 0 and len(varis) == 1 and len(exps) == 0):
        return expression
    if (len(coefs) == 0 and len(varis) == 0 and len(exps) == 1):
        return expression
    if (len(coefs) == 1 or len(varis) == 1 or len(exps) == 1):
        return expression

     
    #print "coefs " + str(coefs)
    #print "varis " + str(varis)
    #print "exps " +  str(exps)    
    expression_parts = exps + varis + coefs
    new_expr = ""
    if len(expression_parts) == 0:
        return expression

    first_part = expression_parts[0]
    
    #print first_part
    #symbol = first_part[0]
    #print symbol
    #first_part = first_part.replace(symbol,"")
    #first_part += symbol
    #print first_part
    new_expr += first_part
    for i in range(1,len(expression_parts)):
        part = expression_parts[i]
        new_expr += str(part)
    print "like terms: " + str(new_expr)
    print("liketerms:"+ str(new_expr) + str(hold_this))
    return str(new_expr + hold_this)

def fix_single_variables(variable):
    return ("1*"+str(variable))
    
