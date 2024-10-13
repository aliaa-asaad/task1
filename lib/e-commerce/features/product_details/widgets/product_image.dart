import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_images.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(AppImages.wire)),
          const Text(
            '1/5 Foto',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.text),
          )
        ],
      ),
    );
  }
}
