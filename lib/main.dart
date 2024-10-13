import 'package:flutter/material.dart';
import 'package:innova_flutter/e-commerce/features/nav_bar/nav_bar.dart';
import 'package:innova_flutter/innova_task/screen3.dart';
import 'package:innova_flutter/innova_task/screen4.dart';
import 'package:innova_flutter/innova_task/screen5.dart';
import 'package:innova_flutter/innova_task/screen7.dart';
import 'package:innova_flutter/routes.dart';
import 'package:innova_flutter/screen6/screen6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        Routes.home: (context) => const Screen6(),
        Routes.kgDetails: (context) => const Screen3(),
        Routes.screen7: (context) => const Screen7(),
      },
    
   
      
      home: const CustomNavBar(),
    );
  }
}
