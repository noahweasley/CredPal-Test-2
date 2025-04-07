import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/annotated_status_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedStatusBar(
      color: Colors.white,
      brightness: Brightness.light,
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: SafeArea(
          child: Column(
            children: [
              TopSection(),
              SearchSection(),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    ProductsSection(),
                    MerchantsSection(),
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

// Dummy widget implementations for now
class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.amber,
      child: const Center(child: Text('Top Section')),
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blueAccent,
      child: const Center(child: Text('Search Section')),
    );
  }
}

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        color: Colors.green,
        child: const Center(child: Text('Products Section')),
      ),
    );
  }
}

class MerchantsSection extends StatelessWidget {
  const MerchantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        color: Colors.purple,
        child: const Center(child: Text('Merchants Section')),
      ),
    );
  }
}
