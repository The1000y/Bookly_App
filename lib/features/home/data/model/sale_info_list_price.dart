import 'package:equatable/equatable.dart';

class SaleInfoListPrice extends Equatable {
  final double? amount;
  final String? currencyCode;

  const SaleInfoListPrice({
    this.amount,
    this.currencyCode,
  });

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) =>
      SaleInfoListPrice(
        amount: json["amount"]?.toDouble(),
        currencyCode: json["currencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "currencyCode": currencyCode,
      };

  @override
  List<Object?> get props => [amount, currencyCode];
}
