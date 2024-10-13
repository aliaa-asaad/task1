
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final String image;
  const HomeSlider({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 150,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image:  DecorationImage(
          image: AssetImage(image) , fit: BoxFit.cover,
        ),
      ),
    );
  }
}
