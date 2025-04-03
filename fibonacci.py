n = int(input("Enter a number : "))
a = 0
b = 1

for i in range(n):
    print(sum, sep = " ")
    sum = a+b
    a = b
    b = sum
    