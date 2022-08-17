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
        color: const Color(0xffF8F5F2),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 23,
            right: 15,
            top: 73,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/images/back.svg')),
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
                height: 15,
              ),
              SizedBox(
                height: 38,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildContainer(
                      title: 'Filters',
                      url: 'assets/images/filters.svg',
                      isSelected: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(
                      title: 'Nearby',
                      url: 'assets/images/location_icon.svg',
                      isSelected: true,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(
                      title: 'Above 4.5',
                      url: 'assets/images/star.svg',
                      isSelected: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    buildContainer(
                      title: 'Affordable',
                      url: 'assets/images/tag_icon.svg',
                      isSelected: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer({
    required String title,
    required String url,
    required bool isSelected,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffE84C4F) : Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
          ),
        ],
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
              color: isSelected ? Colors.white : const Color(0xff3E4462),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
