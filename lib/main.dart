import 'package:flutter/material.dart';
import 'package:food_app/cores/constants/color.dart';
import 'package:food_app/features/screens/bottom_navigation_screen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      title: 'FOODIE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: ThemeClass.secondaryColor,
      ),
      home: const BottomNavBar(),
    );
  }
}
