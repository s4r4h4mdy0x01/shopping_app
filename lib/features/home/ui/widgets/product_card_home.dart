import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/styles_manager.dart';

import '../../../../core/theming/color_manager.dart';

class ProductCardHome extends StatelessWidget {
  final String image;

  final String title;
  final String description;

  const ProductCardHome({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManager.color3,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              height: 120,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        title,
                        style: TextStylesManager.font13Regular,
                      ),
                    ),
                    const Icon(
                      Icons.favorite,
                      color: ColorManager.rad,
                    ),
                  ],
                ),
                Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStylesManager.font13GrayRegular,
                    description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
