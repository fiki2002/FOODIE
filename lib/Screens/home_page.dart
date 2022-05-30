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
      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween(),
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  //  SvgPicture.asset('assets/images/drop_down_arrow.svg'),
                ),
              ),
              SvgPicture.asset('assets/images/notification_icon.svg'),
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
            children: [
              Container(
                width: 74,
                height: 74,
                
                child: SvgPicture.asset('assets/images/favourite_icon.svg',),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: Border
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
