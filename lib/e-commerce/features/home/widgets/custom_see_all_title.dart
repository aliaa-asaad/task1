import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';

class CustomSeeAllTitle extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const CustomSeeAllTitle({
    super.key,
    required this.title, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.text),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'See All',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primary),
          ),
        )
      ],
    );
  }
}
