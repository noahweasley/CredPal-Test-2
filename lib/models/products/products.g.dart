// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      hasPercent: json['hasPercent'] as bool,
      name: json['name'] as String,
      promoPrice: json['promoPrice'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      companyLogo: json['companyLogo'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'promoPrice': instance.promoPrice,
      'image': instance.image,
      'price': instance.price,
      'companyLogo': instance.companyLogo,
      'hasPercent': instance.hasPercent,
    };
