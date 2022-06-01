import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 68,
        ),
        child: Builder(
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: const Color(0xffE84C4F).withOpacity(0.08),
                      height: 36,
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tanke, Oke-Odo',
                            style: GoogleFonts.poppins(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff7E7E7E),
                            ),
                          ),
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
                const SizedBox(
                  height: 34,
                ),
                Text(
                  'Hello, Tosin',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff3E4462),
                    fontStyle: FontStyle.normal,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'What do you want to eat?',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff7E7E7E),
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
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
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Today\'s promo',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff3E4462),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const SizedBox(
                  width: 121,
                ),
                Text(
                  'See all',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffE84C4F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
