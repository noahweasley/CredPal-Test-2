// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Merchant _$MerchantFromJson(Map<String, dynamic> json) => Merchant(
      image: json['image'] as String,
      isActive: json['isActive'] as bool,
      name: json['name'] as String,
    );

Map<String, dynamic> _$MerchantToJson(Merchant instance) => <String, dynamic>{
      'image': instance.image,
      'isActive': instance.isActive,
      'name': instance.name,
    };
