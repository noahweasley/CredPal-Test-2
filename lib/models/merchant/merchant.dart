import 'package:json_annotation/json_annotation.dart';

part 'merchant.g.dart';

@JsonSerializable()
class Merchant {
  final String image;
  final bool isActive;
  final String name;

  Merchant({
    required this.image,
    required this.isActive,
    required this.name,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) => _$MerchantFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantToJson(this);
}
