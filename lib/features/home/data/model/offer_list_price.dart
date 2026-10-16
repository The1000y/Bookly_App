import 'package:equatable/equatable.dart';

class OfferListPrice extends Equatable {
  final int? amountInMicros;
  final String? currencyCode;

  const OfferListPrice({
    this.amountInMicros,
    this.currencyCode,
  });

  factory OfferListPrice.fromJson(Map<String, dynamic> json) =>
      OfferListPrice(
        amountInMicros: json["amountInMicros"],
        currencyCode: json["currencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "amountInMicros": amountInMicros,
        "currencyCode": currencyCode,
      };

  @override
  List<Object?> get props => [amountInMicros, currencyCode];
}
