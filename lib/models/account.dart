import 'package:isar_community/isar.dart';

part 'account.g.dart';

@collection
class Account {
  Id id = Isar.autoIncrement;

  late String name;

  late String type; // "Cash", "Bank", "Card"

  String? lastFourDigits;

  late double initialBalance;

  late double currentBalance;

  late String colorHex;

  String? senderId;

  double? totalCreditLimit;

  int? statementDate;

  Account();

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..type = json['type'] as String
      ..lastFourDigits = json['lastFourDigits'] as String?
      ..initialBalance = (json['initialBalance'] as num).toDouble()
      ..currentBalance = (json['currentBalance'] as num).toDouble()
      ..colorHex = json['colorHex'] as String
      ..senderId = json['senderId'] as String?
      ..totalCreditLimit = (json['totalCreditLimit'] as num?)?.toDouble()
      ..statementDate = json['statementDate'] as int?;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'lastFourDigits': lastFourDigits,
      'initialBalance': initialBalance,
      'currentBalance': currentBalance,
      'colorHex': colorHex,
      'senderId': senderId,
      'totalCreditLimit': totalCreditLimit,
      'statementDate': statementDate,
    };
  }
}
