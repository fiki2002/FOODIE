import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xffF8F5F2),
            ],
            stops: [0.05, 0.5],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 23,
            right: 15,
            top: 50,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/back.svg'),
                  Text(
                    'Today\'s Promo',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff3E4462),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(
     String title,
     Color textColor,
     String url,
     bool isSelected ,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffE84C4F) : Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          SvgPicture.asset(url),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              color: const Color(0xff3E4462),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
