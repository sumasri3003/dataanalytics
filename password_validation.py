import re
password_patt = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&+=!]).{8,}$"/ 

m = "Strong@123"
match = re.search(password_patt,m)
if match:
    print("password is valid")
else:
    print("password is invalid")