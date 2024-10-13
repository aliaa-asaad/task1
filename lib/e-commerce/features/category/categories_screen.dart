import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_icons.dart';
import 'package:innova_flutter/e-commerce/core/shared/widgets/custom_search_form_field.dart';
import 'package:innova_flutter/e-commerce/features/category/widgets/categories_button.dart';
import 'package:innova_flutter/e-commerce/features/category/widgets/categories_grid_view.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppIcons.shoppingCart),
            onPressed: () {},
          ),
        ],
        title: const Text(
          'Categories',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.text),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gadget',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.text),
            ),
            SizedBox(height: 20),
            CustomSearchFormField(),
            SizedBox(height: 20),
            CategoriesGridView(),
            SizedBox(height: 31),
            CategoriesButton()
          ],
        ),
      ),
    );
  }
}
