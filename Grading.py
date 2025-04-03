i = int(input("Enter the score : "))
if (i >= 90 and i <= 100):
    print("Grade A")
elif (i >= 80 and i < 90):
    print("Grade B")
elif (i >= 70 and i < 80):
    print("Grade C")
elif (i >= 60 and i < 70):
    print("Grade D")
else:
    print("Fail")