import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innova_flutter/e-commerce/core/assets/app_icons.dart';
import 'package:innova_flutter/e-commerce/features/home/home_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _body = [
    {
      'app_bar': AppBar(
        centerTitle: true,
        elevation: 3,
        actions: [IconButton(
          icon: SvgPicture.asset(AppIcons.notificationIcon),
          onPressed: () {},
        ),IconButton(
          icon: SvgPicture.asset(AppIcons.shoppingCart),
          onPressed: () {},
        ),
        
        ],
        title: const Text(
          'Mega Mall',
          style:
              TextStyle(fontWeight: FontWeight.w700, color: Color(0xff3669C9)),
        ),
      ),
      'body': const HomeScreen(),
    },
    {
      'app_bar': AppBar(),
      'body': const Text('favorite'),
    },
    {
      'app_bar': AppBar(),
      'body': const Text('favorite'),
    },
    {
      'app_bar': AppBar(),
      'body': const Text('favorite'),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _body[_selectedIndex]['app_bar'],
      body: _body[_selectedIndex]['body'],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff3669C9),
          unselectedItemColor: const Color(0xff0C1A30),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.cart), label: 'Cart'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile'),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
