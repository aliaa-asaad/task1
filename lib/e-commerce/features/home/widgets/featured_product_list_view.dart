import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/shared/widgets/featured_product_card.dart';

class FeaturedProductListView extends StatelessWidget {
  const FeaturedProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const FeaturedProductCard(),
      ),
    );
  }
}
