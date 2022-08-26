import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cores/constants/color.dart';
import '../../cores/widgets/containers.dart';

class MenuItem extends StatelessWidget {
  final MyContainer nextContainer;
  const MenuItem({
    Key? key,
    required this.nextContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: h * 0.4,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(nextContainer.bgImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: ThemeClass.containerColor,
                      radius: 12,
                      child: SvgPicture.asset(
                        'assets/images/back.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: ThemeClass.containerColor,
                    radius: 12,
                    child: SvgPicture.asset(
                      'assets/images/favourite_icon.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              
              ],
            ),
              Container(
              width: w,
              height: 168,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ThemeClass.containerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'nextContainer.food1',
                    style: GoogleFonts.poppins(
                      color: ThemeClass.containerColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    nextContainer.restuarantName,
                    style: GoogleFonts.poppins(
                      color: ThemeClass.containerColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
