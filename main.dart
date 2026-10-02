
import 'bank.dart';

void main() {
  BankAccount urmat = BankAccount(
    'Urmat',
    10001,
    5000,
  );

  BankAccount daniyar = BankAccount(
    'Daniyar',
    10002,
    3000,
  );

  BankAccount bakyt = BankAccount(
    'Bakyt',
    10003,
    7000,
  );

  urmat.showInfo();
  urmat.deposit(2000);
  urmat.withdraw(1500);
  print('Текущий баланс: ${urmat.getBalance()} сом');
  print('--------------------------------');

  daniyar.showInfo();
  daniyar.deposit(1000);
  daniyar.withdraw(5000);
  print('Текущий баланс: ${daniyar.getBalance()} сом');
  print('--------------------------------');

  bakyt.showInfo();
  bakyt.deposit(3000);
  bakyt.withdraw(2000);
  print('Текущий баланс: ${bakyt.getBalance()} сом');
  print('--------------------------------');

  urmat.transfer(daniyar, 1000);

  print('Баланс после перевода:');
  print('Urmat: ${urmat.getBalance()} сом');
  print('Daniyar: ${daniyar.getBalance()} сом');
}







