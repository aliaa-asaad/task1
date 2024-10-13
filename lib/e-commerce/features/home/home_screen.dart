import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_images.dart';
import 'package:innova_flutter/e-commerce/core/shared/widgets/custom_search_form_field.dart';
import 'package:innova_flutter/e-commerce/features/category/categories_screen.dart';
import 'package:innova_flutter/e-commerce/features/home/widgets/categories_list_view.dart';
import 'package:innova_flutter/e-commerce/features/home/widgets/custom_see_all_title.dart';
import 'package:innova_flutter/e-commerce/features/home/widgets/featured_product_list_view.dart';
import 'package:innova_flutter/e-commerce/features/home/widgets/home_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: const CustomSearchFormField(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: HomeSlider(
              image: AppImages.firstBanner,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomSeeAllTitle(
              title: 'Categories',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const CategoriesScreen();
                  }),
                );
              },
            ),
          ),
          const CategoriesListView(),
          const SizedBox(
            height: 22,
          ),
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSeeAllTitle(title: 'Featured Product'),
                FeaturedProductListView(),
                SizedBox(
                  height: 36,
                ),
                HomeSlider(
                  image: AppImages.greenBanner,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
