import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cores/constants/color.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 15,
              top: 73,
            ),
            child: Row(
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
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
            ),
            child: SizedBox(
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
          ),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, __) => listContainer(),
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemCount: 1,
            ),
          ),
        ],
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

  Widget listContainer() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF).withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BBQ Saga',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff3E4462),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/star_2.svg'),
                        const SizedBox(width: 4),
                        Text(
                          '5.0',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff3E4462),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mowarid Hostel, Tanke',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7E7E7E),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '1 Km',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7E7E7E),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  height: 4,
                  color: const Color(0xffEFEFF2),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 96,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/food.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          'BBQ Special',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
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
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 8,
                                backgroundColor: const Color(0xffEDA345),
                                child: Center(
                                  child: Text(
                                    '%',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Free delivery',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff7E7E7E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    PhysicalModel(
                      color: Colors.black,
                      elevation: 5,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: SvgPicture.asset(
                          'assets/images/favourite_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: ThemeClass.boxColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F5F2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text('1'),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: ThemeClass.brandPrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 96,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/bbq.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Barbeque & vibes',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              '3500',
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
                              '4000',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffCACACA),
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 8,
                                backgroundColor: const Color(0xffEDA345),
                                child: Center(
                                  child: Text(
                                    '%',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Delivery discount',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff7E7E7E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    PhysicalModel(
                      color: Colors.black,
                      elevation: 5,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: SvgPicture.asset(
                          'assets/images/favourite_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      height: 36,
                      width: 82,
                      decoration: BoxDecoration(
                        color: ThemeClass.brandPrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            'Add',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.containerColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
         Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF).withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BBQ Saga',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff3E4462),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/star_2.svg'),
                        const SizedBox(width: 4),
                        Text(
                          '5.0',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff3E4462),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mowarid Hostel, Tanke',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7E7E7E),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '1 Km',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7E7E7E),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  height: 4,
                  color: const Color(0xffEFEFF2),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 96,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/food.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          'BBQ Special',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
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
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 8,
                                backgroundColor: const Color(0xffEDA345),
                                child: Center(
                                  child: Text(
                                    '%',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Free delivery',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff7E7E7E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    PhysicalModel(
                      color: Colors.black,
                      elevation: 5,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: SvgPicture.asset(
                          'assets/images/favourite_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: ThemeClass.boxColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F5F2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text('1'),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: ThemeClass.brandPrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 96,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/bbq.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Barbeque & vibes',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              '3500',
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
                              '4000',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffCACACA),
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 8,
                                backgroundColor: const Color(0xffEDA345),
                                child: Center(
                                  child: Text(
                                    '%',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Delivery discount',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff7E7E7E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    PhysicalModel(
                      color: Colors.black,
                      elevation: 5,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: SvgPicture.asset(
                          'assets/images/favourite_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      height: 36,
                      width: 82,
                      decoration: BoxDecoration(
                        color: ThemeClass.brandPrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            'Add',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.containerColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
