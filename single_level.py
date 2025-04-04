class Vehicle:
    def start(self):
        return "start driving"
class Car(Vehicle):
    def drive(self):
        return "car driving"
obj = Car()
print(obj.start())
print(obj.drive())