class Living:
    def breathe(self):
        return "breathing"
class Animal(Living):
    def move(self):
        return "Moving"
class Human(Animal):
    def speak(self):
        return "speaking"
obj = Human()
print(obj.speak())
print(obj.move())
print(obj.breathe())