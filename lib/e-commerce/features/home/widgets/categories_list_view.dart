import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_icons.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'image': AppIcons.carrot,
        'title': 'Food',
        'color': Color(0xffE4F3EA),
      },
      {
        'image': AppIcons.fruits,
        'title': 'Clothes',
        'color': Color(0xffFFECE8),
      },
      {
        'image': AppIcons.eggs,
        'title': 'Fashion',
        'color': Color(0xffFFF6E4),
      },
      {
        'image': AppIcons.meat,
        'title': 'Gadgets',
        'color': Color(0xffF1EDFC),
      },
      {
        'image': AppIcons.meat,
        'title': 'Gadgets',
        'color': Color(0xffF1EDFC),
      },
    ];
    return SizedBox(
      height: 76,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: categories[index]['color'],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(categories[index]['image']),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              categories[index]['title'],
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.text),
            )
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 32,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
