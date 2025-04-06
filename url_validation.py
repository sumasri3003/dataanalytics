import re

url_patt = r"^(https?://)?(www\.)?[a-zA-Z0-9-]+\.[a-zA-Z]{2,}(/.*)?$"
url = "https://www.google.com/"
match = re.search(url_patt,url)
if match :
    print("url is valid")
else:
    print("url is not valid")

