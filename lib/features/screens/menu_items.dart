import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../cores/constants/color.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/food.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: CircleAvatar(
                child: SvgPicture.asset('assets/images/back.svg'),
                backgroundColor: ThemeClass.containerColor,
              ),
            ),
            Positioned(
              child: CircleAvatar(
                child: SvgPicture.asset('assets/images/favourite_icon.svg'),
                backgroundColor: ThemeClass.containerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
