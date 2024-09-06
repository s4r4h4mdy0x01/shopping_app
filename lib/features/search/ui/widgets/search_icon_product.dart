import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/logic/home_state.dart';
import 'package:shopping_app/features/search/ui/product_search_delegate.dart';

import '../../../home/logic/home_cubit.dart';

class SearchIconProduct extends StatelessWidget {
  const SearchIconProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final homeCubit = context.read<HomeCubit>();
        final state = homeCubit.state;
        if (state is ProductsSuccess) {
          final products = state.productsList;
          showSearch(
            context: context,
            delegate: ProductSearchDelegate(products),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to fetch products')),
          );
        }
      },
      icon: const Icon(
        Icons.search,
        color: Colors.black,
      ),
    );
  }
}
