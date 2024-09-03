import 'package:flutter/material.dart';

import '../../../../core/theming/styles_manager.dart';

class MostSearchedProductsSeaAll extends StatelessWidget {
  const MostSearchedProductsSeaAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'The most searched products',
          style: TextStylesManager.font18BlackSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStylesManager.font13OrangRegular,
        ),
      ],
    );
  }
}
