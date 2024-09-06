import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/ui/widgets/product_card_shimmer.dart';

class GridViewBuilderProductsShimmer extends StatelessWidget {
  const GridViewBuilderProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const ProductCardShimmer();
        });
  }
}
