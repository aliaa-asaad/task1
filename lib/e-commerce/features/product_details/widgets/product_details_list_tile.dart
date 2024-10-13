import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_colors.dart';

class ProductDetailsListTile extends StatelessWidget {
  const ProductDetailsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
          backgroundColor: AppColors.primary,
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/R.9eebbeb17df0d0e9f3fb047d35903129?rik=vf22HaU%2f%2bsQjZA&riu=http%3a%2f%2fwww.detectiveconanworld.com%2fwiki%2fimages%2f3%2f3b%2fShinichi_Kudo_Profile.jpg&ehk=QJT174CwmEWGVzxkVYcsnxKPfVhiBinmeEnoKsIqrf4%3d&risl=&pid=ImgRaw&r=0')),
      title: Text(
        'Shop Larson Electronic',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.text),
      ),
      subtitle: Text(
        'Official Store',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.text),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
