import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:food_app/Screens/promo.dart';

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
      body: Builder(
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
                        color: const Color(0xffE84C4F).withOpacity(0.08),
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
                              color: const Color(0xff7E7E7E),
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
                    color: const Color(0xff3E4462),
                    fontStyle: FontStyle.normal,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  'What do you want to eat?',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff7E7E7E),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Favorite',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff7E7E7E),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Cheap',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff7E7E7E),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Trend',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff7E7E7E),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                       const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'More',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff7E7E7E),
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
                        color: const Color(0xff3E4462),
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 300,
                            width: 323,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/first_image.png',
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment:Alignment.topRight,
                            child: CircleAvatar(
                              radius: 10,
                              child: SvgPicture.asset(
                                'assets/images/favourite_icon.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 300,
                        width: 323,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:AssetImage('assets/images/food.jpg'),
                          ),
                        ),
                      ),
                       const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
