#implementing exceptional handling

#1.Zero DivisionError
try:
    a = 100/0
except ZeroDivisionError as e:
    print("Zero Division error : ",e)

#2.Value Error
try:
    n = int("suma")
except ValueError as e:
    print("value error : ",e)

#3.Index error
try:
    m = [1,2,3,4,5]
    print(m[8]) #index error
except IndexError as e:
    print("Index error : ",e)
    
#4.Key error
try:
    p = {"name" : "sai"}
    print(p["age"]) #key does not exist
except KeyError as e:
    print("Key error : ",e)

#5.File not found Error
try:
    with open("sumas.txt",'r') as f:
        content = f.read()
except FileNotFoundError as e:
    print("file not found error : ",e)
    
#6.type error
try:
    r = "abc"+9 #wrong type
    print(r)
except TypeError as e:
    print("Type error : ",e)
    
#7.Custom exception
class NotEligible(Exception):
    pass
def checkage(age):
    if age <21 :
        raise NotEligible("age must be 21")
    else:
        print("you are eligible")
try:
    checkage(20)
except NotEligible as e:
    print("Custom NotEligible exception : ",e)8