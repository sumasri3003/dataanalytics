print("-------Palindrome program-----")
s = input("Enter a String : ")
rev = s[::-1] #Slicing
print(rev)
if (rev == s):
    print("The string is a palindrome")
else:
    print("Not a palindrome")
    