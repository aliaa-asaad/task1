import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_icons.dart';
import 'package:innova_flutter/e-commerce/features/product_details/widgets/product_description.dart';
import 'package:innova_flutter/e-commerce/features/product_details/widgets/product_details.dart';
import 'package:innova_flutter/e-commerce/features/product_details/widgets/product_details_buttons.dart';
import 'package:innova_flutter/e-commerce/features/product_details/widgets/product_details_list_tile.dart';
import 'package:innova_flutter/e-commerce/features/product_details/widgets/product_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              AppIcons.shoppingCart,
            ),
            onPressed: () {},
          ),
        ],
        title: const Text(
          'Product Details',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.text),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ProductImage(),
            SizedBox(height: 30),
            ProductDetails(),
            SizedBox(height: 32),
            Divider(),
            ProductDetailsListTile(),
            Divider(),
            SizedBox(height: 30),
            ProductDescription(),
            SizedBox(height: 48),
            ProductDetailsButton()
          ],
        ),
      ),
    );
  }
}
