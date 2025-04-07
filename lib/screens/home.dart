import 'package:credpal_test/constants/app_style.dart';
import 'package:credpal_test/constants/assets.dart';
import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/constants/dimensions.dart';
import 'package:credpal_test/domain/bloc/home_bloc.dart';
import 'package:credpal_test/domain/states/home_state.dart';
import 'package:credpal_test/widgets/annotated_status_bar.dart';
import 'package:credpal_test/widgets/app_textfield.dart';
import 'package:credpal_test/widgets/merchat_card.dart';
import 'package:credpal_test/widgets/product_card.dart';
import 'package:credpal_test/widgets/search_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.periwinkleBlue,
      body: AnnotatedStatusBar(
        child: SafeArea(
          child: Column(
            children: [
              const TopSection(),
              const SearchSection(),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const ProductsSection(),
                    const MerchantsSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 16,
        left: 20,
        bottom: 30,
        top: 15,
      ),
      color: const Color(0xffD0DAFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pay later',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'everywhere',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.space1,
                  ),
                  Container(
                    height: 17,
                    width: 17,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    child: const Icon(
                      Icons.priority_high,
                      size: 10,
                      color: Color(0xff274FED),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Shopping limit: ₦0',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff20294A),
                ),
              ),
              const SizedBox(height: Dimensions.space2),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: Dimensions.space1,
                    horizontal: Dimensions.space2,
                  ),
                  backgroundColor: const Color(0xff274FED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.space2),
                  ),
                ),
                child: Text(
                  'Activate Credit',
                  style: TextStyles.bodyLarge.apply(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 16,
          bottom: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: AppTextField(
                hintText: 'Search for products or stores',
                borderRadius: 2000,
                prefixIcon: SvgPicture.asset(
                  VectorAssets.search,
                  width: 24,
                  height: 24,
                ),
                fillColor: AppColor.softPeriwinkle,
              ),
            ),
            const SizedBox(width: Dimensions.space1),
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF1F3FE),
      child: Column(
        children: [
          TopProducts(),
          const SizedBox(height: Dimensions.space4),
          BottomProducts(),
        ],
      ),
    );
  }
}

class TopProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
              top: 14,
              left: 21,
              right: 21,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = state.products[index];

              return ProductCard(
                product: product,
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: Dimensions.space4);
            },
            itemCount: state.products.length,
          );
        },
      ),
    );
  }
}

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

class MerchantsSection extends StatelessWidget {
  const MerchantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
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
                  child: Text(
                    'View all',
                    style: TextStyles.bodyMedium.bold.apply(
                      color: const Color(0xff274FED),
                    ),
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
      ),
    );
  }
}
