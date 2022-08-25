import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/screens/menu_items.dart';
import '../constants/color.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  MyContainer(
      {required this.foodName,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.restuarantName,
      required this.price1,
      required this.price2,
      required this.food1,
      required this.food2,
      required this.secondFood1,
      required this.secondFood2,
      this.bgImage = 'assets/images/item7.jpg',
      Key? key})
      : super(key: key);
  final String foodName;
  final String imageUrl1;
  final String imageUrl2;
  final String restuarantName;
  final String price1;
  final String price2;
  final String food1;
  final String food2;
  final String secondFood1;
  final String secondFood2;
  String bgImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF).withOpacity(0.8),
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
                  foodName,
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
                  restuarantName,
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
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        imageUrl1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Text(
                      food1,
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
                          price1,
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
                          price2,
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
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        imageUrl2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food2,
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
                          secondFood1,
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
                          secondFood2,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuItem(
                                nextContainer: MyContainer(
                                  food1: food1,
                                  food2: food2,
                                  foodName: foodName,
                                  imageUrl1: imageUrl1,
                                  imageUrl2: imageUrl2,
                                  price1: price1,
                                  price2: price2,
                                  restuarantName: restuarantName,
                                  secondFood1: secondFood1,
                                  secondFood2: secondFood2,
                                  bgImage: this.bgImage,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Add',
                          style: GoogleFonts.poppins(
                            color: ThemeClass.containerColor,
                            fontSize: 15,
                          ),
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
    );
  }
}
