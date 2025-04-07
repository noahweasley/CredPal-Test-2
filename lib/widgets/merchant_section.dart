import 'package:credpal_test/constants/app_style.dart';
import 'package:credpal_test/constants/dimensions.dart';
import 'package:credpal_test/domain/bloc/home_bloc.dart';
import 'package:credpal_test/domain/states/home_state.dart';
import 'package:credpal_test/widgets/merchat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MerchantsSection extends StatelessWidget {
  const MerchantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured Merchants',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Color(0xff33334D),
                ),
              ),
              TextButton(
                onPressed: () {},
                child:  Text(
                  'View all',
                  style: TextStyles.bodyMedium.bold.apply(color: const Color(0xff274FED),),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Dimensions.space4),
        BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return Wrap(
            spacing: 25,
            runSpacing: 30,
            children: state.merchants.map((merchant) {
              return MerchantCard(
                merchant: merchant,
                onTap: () {},
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}
