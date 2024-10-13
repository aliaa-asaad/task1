import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TMA-2HD Wireless',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.text),
        ),
        const SizedBox(height: 10),
        const Text(
          'Rp. 1.500.000',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffFE3A30)),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(
              Icons.star_rate_rounded,
              color: Color(0xffFFC107),
              size: 16,
            ),
            const Text(
              '4.5',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.text),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              '86 Reviews',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.text),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xffEEFAF6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Tersedia : 250',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3A9B7A)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
