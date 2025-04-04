class Person:
    def info(self):
        print("Hii")
class Employee(Person):
    def emp_details(self):
        print("Employee Details")
class Student(Person):
    def stu_details(self):
        print("student details")
class Intern(Employee,Student):
    def intern_(self):
        print("Intern role")
i1 = Intern()
i1.emp_details()
i1.stu_details()
i1.intern_()
