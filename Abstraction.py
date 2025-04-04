from abc import ABC, abstractmethod
class Payment(ABC): #abstract class
    
    @abstractmethod
    def pay(self,amount):
        pass
class CreditCard(Payment):
    def pay(self,amount):
        print(f"paid Rs{amount} through credit card")
class Upi(Payment):
    def pay(self,amount):
        print(f"paid Rs{amount} through UPI")
class GooglePay(Payment):
    def pay(self,amount):
        print(f"paid Rs{amount} through googlepay")
def process(payment : Payment, amount:int):
    payment.pay(amount)
c1 = CreditCard()
u1 = Upi()
g1 = GooglePay()
process(c1,500)
process(u1,2000)
process(g1,300)