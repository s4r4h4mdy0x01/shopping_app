import 'package:flutter/material.dart';
import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/styles_manager.dart';
import '../../../search/ui/widgets/search_icon_product.dart';

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
        const SearchIconProduct(),
      ],
    );
  }
}
