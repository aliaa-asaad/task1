
import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(MediaQuery.sizeOf(context).width, 48),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.text, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Filter & Sorting',
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: AppColors.text),
      ),
    );
  }
}
