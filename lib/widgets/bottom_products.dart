import 'package:credpal_test/constants/dimensions.dart';
import 'package:credpal_test/domain/bloc/home_bloc.dart';
import 'package:credpal_test/domain/states/home_state.dart';
import 'package:credpal_test/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.products2.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
              bottom: 14,
              left: 21,
              right: 21,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = state.products2[index];

              return ProductCard(
                product: product,
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: Dimensions.space4);
            },
          );
        },
      ),
    );
  }
}

