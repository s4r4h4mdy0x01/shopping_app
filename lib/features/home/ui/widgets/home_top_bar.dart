import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/styles_manager.dart';
import '../../../search/product_search_delegate.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.lightGrey,
          radius: 20,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        const Spacer(),
        Text(
          'Home Screen',
          style: TextStylesManager.font26OrangekMedium,
        ),
        const Spacer(
          flex: 2,
        ),
        IconButton(
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
              // موجود خطأ أو حالة غير ناجحة
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to fetch products')),
              );
            }
          },
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
