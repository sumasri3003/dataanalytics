print("-----------------prime number program----------------")
n = int(input("Enter a number : "))
count = 0
if n == 0 or n == 1:
    print("The given number is not a prime number")
else:
    for i in range(2,n):
        if n % i == 0 :
            count += 1
    if(count == 0):
        print("Given number is a prime number")
    else:
        print("The given number is not a prime number")