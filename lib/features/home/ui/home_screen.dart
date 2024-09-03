import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/ui/widgets/home_orange_container.dart';
import 'package:shopping_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:shopping_app/features/home/ui/widgets/most_searched_products_sea_all.dart';

import '../../../core/helper/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              const HomeTopBar(),
              const HomeOrangeContainer(),
              verticalSpace(24),
              const MostSearchedProductsSeaAll(),
            ],
          ),
        ),
      ),
    );
  }
}
