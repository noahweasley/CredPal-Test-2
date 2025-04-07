import 'package:credpal_test/models/merchant/merchant.dart';
import 'package:credpal_test/models/products/products.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final List<Product> products;
  final List<Product> products2;
  final List<Merchant> merchants;

  HomeState({
    required this.merchants,
    required this.products,
    required this.products2,
  });

  @override
  List<Object?> get props => [products, products2, merchants];
}

class HomeStateInitial extends HomeState {
  HomeStateInitial({
    required super.products,
    required super.products2,
    required super.merchants,
  });
}
