import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_icons.dart';

class CustomSearchFormField extends StatelessWidget {
  const CustomSearchFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search Product Name',
        hintStyle: const TextStyle(
            color: Color(0xffC4C5C4),
            fontSize: 14,
            fontWeight: FontWeight.w500),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(AppIcons.search),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
