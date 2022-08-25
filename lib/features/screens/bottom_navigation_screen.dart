import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/features/screens/home_page.dart';
import 'package:food_app/features/screens/promo.dart';




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;
  final pages = [
    const MyHomePage(),
    const PromoPage(),
    const Text(''),
    const Text('Waiting'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              color: const Color(0xffE84C4F),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/images/shopping-bag.svg',
              color: const Color(0xff262F56),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/images/search.svg',
              color: const Color(0xff262F56),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/images/user.svg',
              color: const Color(0xff262F56),
            ),
          ),
        ],
      ),
    );
  }
}
