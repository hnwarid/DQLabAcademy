import math
x = 5
x_factorial = math.factorial(5)
print(x_factorial)
x_factorial = math.copysign(x_factorial, -10000)
print(x_factorial)

x = [2.22,-3.33,4.44,-5.55]
total = 0
for i in x:
    total += math.ceil(i)
    print(f"total is {total} from {math.ceil(i)} from {i}")
print(total)