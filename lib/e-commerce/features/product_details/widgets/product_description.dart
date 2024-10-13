import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description Product',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text),
        ),
        SizedBox(height: 15),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.text),
        ),
      ],
    );
  }
}
