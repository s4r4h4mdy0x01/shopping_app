import 'package:flutter/material.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/styles_manager.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
          'Home',
          style: TextStylesManager.font26OrangekMedium,
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorManager.lightGrey,
          radius: 20,
          child: const Icon(
            Icons.person,
            color: Colors.black,
            size: 32,
          ),
        ),
      ],
    );
  }
}
