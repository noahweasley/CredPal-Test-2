import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart';

@JsonSerializable()
class Product {
  final String name;
  final String promoPrice;
  final String image;
  final String price;
  final String companyLogo;
  final bool hasPercent;

  Product({
    required this.hasPercent,
    required this.name,
    required this.promoPrice,
    required this.image,
    required this.price,
    required this.companyLogo,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
