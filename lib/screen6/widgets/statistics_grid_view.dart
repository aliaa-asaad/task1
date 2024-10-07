import 'package:flutter/material.dart';
import 'package:innova_flutter/screen6/widgets/custom_statistics_card.dart';

class StatsticsGridView extends StatelessWidget {
  const StatsticsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
             Text(
              'الإحصائيات الشهرية',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(width: 8),
            Text(
              '📈', // Graph emoji
              style: TextStyle(fontSize: 18),
            ),
           
            Spacer(),
            
           
            Text(
              'أبريل، 2023',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xff8344AD),
              ),
            ),
             SizedBox(width: 8),
            Icon(
              Icons.calendar_today, // Use the calendar icon
              color: Color(0xff8344AD),
              size: 18,
            ),
          ],
        ),
        const SizedBox(height: 24),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2,
          ),
          children: const [
            CustomStatisticsCard(title: 'الفصول', count: 300, icon: Icons.bed),
            CustomStatisticsCard(
                title: 'الأطفال', count: 356, icon: Icons.person_2_outlined),
            CustomStatisticsCard(
                title: 'الإجازات',
                count: 5,
                icon: Icons.calendar_today_outlined),
            CustomStatisticsCard(
                title: 'الاذونات', count: 20, icon: Icons.history_toggle_off),
          ],
        ),
      ],
    );
  }
}
