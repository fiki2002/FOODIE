import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/features/screens/promo.dart';
import 'package:google_fonts/google_fonts.dart';



import '../../cores/constants/color.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 68,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 36,
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                        decoration: BoxDecoration(
                          color: ThemeClass.brandPrimary.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mowarid Hostel, Oke-Odo',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: ThemeClass.secondaryColor,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SvgPicture.asset(
                              'assets/images/drop_down_arrow.svg',
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/notification_icon.svg',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    'Hello, Oluwatosin',
                    style: GoogleFonts.poppins(
                      color: ThemeClass.primaryColor,
                      fontStyle: FontStyle.normal,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    'What do you want to eat?',
                    style: GoogleFonts.poppins(
                      color: ThemeClass.secondaryColor,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 74,
                            height: 74,
                            alignment: const Alignment(0, 0),
                            child: SvgPicture.asset(
                              'assets/images/favourite_icon.svg',
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Favorite',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.secondaryColor,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 74,
                            height: 74,
                            alignment: const Alignment(0, 0),
                            child: SvgPicture.asset(
                              'assets/images/tag_icon.svg',
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cheap',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.secondaryColor,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 74,
                            height: 74,
                            alignment: const Alignment(0, 0),
                            child: SvgPicture.asset(
                              'assets/images/trend_icon.svg',
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Trend',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.secondaryColor,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 74,
                            height: 74,
                            alignment: const Alignment(0, 0),
                            child: SvgPicture.asset(
                              'assets/images/menu_icon.svg',
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'More',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.secondaryColor,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today\'s promo',
                        style: GoogleFonts.poppins(
                          color: ThemeClass.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PromoPage(),
                            ),
                          );
                        },
                        child: Text(
                          'See all',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffE84C4F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                            ),
                            height: 300,
                            width: 323,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/food.jpg',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/favourite_icon.svg',
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 10,
                            left: 20,
                            child: Container(
                              width: 200,
                              height: 101,
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'BBQ Saga',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff3E4462),
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'With Homemade Sauce',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff7E7E7E),
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '2500',
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xff3E4462),
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 11,
                                      ),
                                      Text(
                                        '3500',
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xffCACACA),
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                            ),
                            height: 300,
                            width: 323,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/ham.jpg',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/favourite_icon.svg',
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 10,
                            left: 20,
                            child: Container(
                              width: 200,
                              height: 101,
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HAM Fiesta',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff3E4462),
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'With extra steak',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff7E7E7E),
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '2000',
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xff3E4462),
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 11,
                                      ),
                                      Text(
                                        '1500',
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xffCACACA),
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),                    
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
