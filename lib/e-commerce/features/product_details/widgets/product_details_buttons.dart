import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_icons.dart';

class ProductDetailsButton extends StatelessWidget {
  const ProductDetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            //   width: MediaQuery.of(context).size.width ,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  AppIcons.favorite,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            // width: MediaQuery.of(context).size.width ,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
