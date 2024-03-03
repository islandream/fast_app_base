import 'package:fast_app_base/screen/main/tab/home/vo/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장");
final bankAccountShinhan2 = BankAccount(bankShinhan, 50000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan, 700000000, accountTypeName: "나몰라 적금");
final bankAccountTtoss = BankAccount(bankTtoss, 23523525);
final bankAccountKakao = BankAccount(bankKakao, 983045);

final List<BankAccount> bankAccountList = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountTtoss,
  bankAccountKakao,
];
