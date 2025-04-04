class Animal:
    def sound(self):
        return "any animal sound"
class Lion(Animal):
    def sound(self):
        return "lion sound"
class Peacock(Animal):
     def sound(self):
         return "peacock sound"
class Deer(Animal):
    def sound(self):
        return "deer sound"
obj = [Lion(),Peacock(),Deer()]
for i in obj:
    print(i.sound())