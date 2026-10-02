class BankAccount {
  String owner;
  int accountNumber;
  int _balance;

  BankAccount(
    this.owner,
    this.accountNumber,
    this._balance,
  );

  void showInfo() {
    print('================================');
    print('        BANK ACCOUNT');
    print('================================');
    print('');
    print('Владелец: $owner');
    print('');
    print('Счёт: $accountNumber');
    print('');
    print('Баланс: $_balance сом');
    print('');
  }

  void deposit(int amount) {
    _balance += amount;

    print('Пополнение: $amount сом');
    print('Баланс: $_balance сом');
    print('');
  }

  bool hasMoney(int amount) {
    return _balance >= amount;
  }

  void withdraw(int amount) {
    print('Снятие: $amount сом');

    if (hasMoney(amount)) {
      _balance -= amount;
      print('Баланс: $_balance сом');
    } else {
      print('Недостаточно средств!');
    }

    print('');
  }

  int getBalance() {
    return _balance;
  }

  void transfer(BankAccount other, int amount) {
    if (hasMoney(amount)) {
      _balance -= amount;
      other._balance += amount;

      print('$owner переводит ${other.owner} $amount сом');
      print('Перевод выполнен!');
      print('');
      print('$owner: $_balance сом');
      print('${other.owner}: ${other._balance} сом');
    } else {
      print('Недостаточно средств!');
    }

    print('');
  }
}