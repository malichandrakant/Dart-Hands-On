class Bank {
  // Private variable
  double _balance = 0;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  // Method to check balance
  double getBalance() {
    return _balance;
  }
}

void main() {
  var myBank = Bank();
  myBank.deposit(100);
  print("Balance: Rs :${myBank.getBalance()}");
}
