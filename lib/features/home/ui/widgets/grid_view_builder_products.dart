import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shopping_app/features/home/logic/home_cubit.dart';
import 'package:shopping_app/features/home/logic/home_state.dart';
import 'package:shopping_app/features/home/ui/widgets/grid_view_builder_products_shimmer.dart';
import 'package:shopping_app/features/home/ui/widgets/product_card_home.dart';

import '../../../../core/constants/string_manager.dart';

class GridViewBuilderProducts extends StatelessWidget {
  const GridViewBuilderProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is ProductsSuccess) {
          context.read<HomeCubit>().refreshController.loadComplete();
        }
        if (state is ProductsError) {
          context.read<HomeCubit>().refreshController.loadFailed();
        }
      },
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const GridViewBuilderProductsShimmer();
        } else if (state is ProductsSuccess) {
          final products = state.productsList;
          return SmartRefresher(
            controller: context.read<HomeCubit>().refreshController,
            enablePullUp: state.hasMore,
            enablePullDown: state.hasMore,
            onLoading: () => context.read<HomeCubit>().fetchMoreProducts(),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.75,
              ),
              itemCount: products!.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCardHome(
                  image: product!.image ?? StringManeger.imageIsNullData,
                  title: product.title ?? 'Product',
                  description: product.description ?? 'Product',
                );
              },
            ),
          );
        } else if (state is ProductsError) {
          return const Center(child: Text(StringManeger.error));
        } else {
          return Container();
        }
      },
    );
  }
}
