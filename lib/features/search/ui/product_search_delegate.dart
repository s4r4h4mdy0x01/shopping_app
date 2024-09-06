import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/features/home/ui/widgets/product_card_home.dart';

import '../../../../../core/constants/string_manager.dart';
import '../../home/data/models/product_response_model.dart';

class ProductSearchDelegate extends SearchDelegate {
  final List<Products?>? products;
  ProductSearchDelegate(this.products);

  @override
  List<Widget>? buildActions(
    BuildContext context,
  ) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    products
        ?.where(
          (product) => product!.title!.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.75,
      ),
      itemCount: products!.length,
      itemBuilder: (context, index) {
        final product = products![index];
        return ProductCardHome(
          image: product!.image ?? StringManeger.imageIsNullData,
          title: product.title ?? 'Product',
          description: product.description ?? 'Product',
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Lottie.asset(
        "assets/animation/shoping.json",
        width: 300,
        height: 300,
      ),
    );
  }
}
