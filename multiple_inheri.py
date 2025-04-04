class Break:
    def work(self):
        return "breaks are working"
class Gear:
    def notwork(self):
        return "gears are not working"
class Car(Break,Gear):
    def drive(self):
        return "car is  in good condition"
car1 = Car()
print(car1.drive())
print(car1.work())
print(car1.notwork())