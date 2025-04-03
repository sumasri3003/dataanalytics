def get_details(name,age,address):
    return name,age,address
person_name = input()
person_age = int(input())
person_address = input()
values = get_details(person_name,person_age,person_address)
print(values)