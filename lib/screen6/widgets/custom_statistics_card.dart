import 'package:flutter/material.dart';
import 'package:innova_flutter/innova_task/screen3.dart';

class CustomStatisticsCard extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;

  const CustomStatisticsCard({
    super.key,
    required this.title,
    required this.count,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Screen3(),
                settings: RouteSettings(arguments: title)));
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              spreadRadius: 1,
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          title: Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          subtitle: Text(
            count.toString(),
            style: const TextStyle(
                color: Color(0xff8344AD), fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 10,
          ),
          leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.purple.shade100.withOpacity(.5),
              child: Icon(icon, size: 17, color: const Color(0xff8344AD))),
        ),
      ),
    );
  }
}
