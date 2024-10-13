import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_images.dart';
import 'package:innova_flutter/e-commerce/features/product_details/product_details_screen.dart';

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProductDetailsScreen(),
        ),
      ),
      child: Container(
        width: 156,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.asset(AppImages.wire)),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'TMA-2 HD Wireless',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.text),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Rp. 1.500.000',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFE3A30)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.star_rate_rounded,
                  color: Color(0xffFFC107),
                  size: 16,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.text),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '86 Reviews',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.text),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: AppColors.text,
                  size: 16,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
