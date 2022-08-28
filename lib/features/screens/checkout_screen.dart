import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cores/constants/color.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.02,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              decoration: const BoxDecoration(
                color: ThemeClass.containerColor,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/images/back.svg',
                      width: 10,
                      height: 10,
                    ),
                  ),
                  Text(
                    'Checkout',
                    style: GoogleFonts.poppins(
                      color: ThemeClass.containerColor,
                      fontSize: 24,
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
