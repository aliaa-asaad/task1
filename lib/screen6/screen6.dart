import 'package:flutter/material.dart';
import 'package:innova_flutter/screen6/widgets/custom_header.dart';
import 'package:innova_flutter/screen6/widgets/posts_list_view.dart';
import 'package:innova_flutter/screen6/widgets/statistics_grid_view.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: const Color(0xff8344AD),
          foregroundColor: const Color(0xff8344AD),
          child: const Icon(
            Icons.add_circle,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[100],
        body: const SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeader(),
                SizedBox(height: 32),
                StatsticsGridView(),
                SizedBox(height: 32),
                Text(
                  'منشورات الحضانة 👀',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                PostsListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
