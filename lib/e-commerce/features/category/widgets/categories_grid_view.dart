import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/shared/widgets/featured_product_card.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          crossAxisSpacing: 13,
          mainAxisSpacing: 13,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const FeaturedProductCard());
  }
}
