class Account:
    def open_account(self):
        print("Account opened")
class SavingsAccount(Account):
    def save(self):
         print("earn extra money")
class CurrentAccount(Account):
    def offer(self):
        print("earn much more money")
acc1 = SavingsAccount()
acc2 = CurrentAccount()
acc1.save()
acc1.open_account()
acc2.offer()
acc2.open_account()