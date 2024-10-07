
import 'package:flutter/material.dart';
import 'package:innova_flutter/screen6/widgets/post_card.dart';

class PostsListView extends StatelessWidget {
  const PostsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) => const PostCard(
        time: 'اليوم, منذ ٣ دقائق',
        title: 'روضة الحياة للأطفال',
        description:
            'اليوم قمنا بالاحتفال بالأجيال الجديدة في حضانة الحياة ونتمنى لكم عام سعيدًا 💖',
        imagePath:
            'https://picsum.photos/200/300', // Replace with the post image
      ),
    );
  }
}
