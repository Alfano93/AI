import expressions as expr

quad1 = "4 = 5*x^2 - 3*x + 134"
quad2 = "16 = 12*x^2 - 15"
quad3 = "3*x + 5*x = 12*x^2 + 3"
foil = "x - 4 * x + 3"
linear = "27 = 3*x + 15 "
sine = "sin(y + 3*s + 15)"
cosi = "cos(z + 1 - 16)"
tang = "tan(q + 4)"
sinesq = "sin(y * pi)^2"
cosisq = "cos(z - 16)^2"
tangsq = "tan(d + 5)^2"
logr = "log(a+b+c)"
inv = "inv(a-x+b)"

test_expressions = [quad1, quad2,quad3,foil, linear, sine, cosi, tang, sinesq, cosisq, tangsq, logr, inv]

for test1 in test_expressions:
    print("Testing: " + str(test1))
    match_array = expr.look_for_match(test1)
    print("Possible Matches: "+str(match_array))
    print

for test2 in test_expressions:
    print("Testing: " + str(test2))
    change_array = expr.find_changes(test2)
    print("Possible Changes: "+str(change_array))
    print

for test3 in test_expressions:
    print("Testing: " + str(test3))
    expr.find_parts(test3)
    print

print(test_expressions[6])
