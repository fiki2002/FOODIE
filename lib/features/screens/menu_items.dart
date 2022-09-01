import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/features/screens/checkout_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cores/constants/color.dart';
import '../../cores/widgets/containers.dart';

class MenuItem extends StatefulWidget {
  final MyContainer nextContainer;
  const MenuItem({
    Key? key,
    required this.nextContainer,
  }) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: h * 0.5,
                  width: w,
                  child: Stack(
                    children: [
                      Container(
                        height: h * 0.4 * 1,
                        width: w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.nextContainer.bgImage),
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: w * 0.4,
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: ThemeClass.containerColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  widget.nextContainer.food1,
                                  style: GoogleFonts.poppins(
                                    color: ThemeClass.primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  widget.nextContainer.restuarantName,
                                  style: GoogleFonts.poppins(
                                    color: ThemeClass.secondaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Open  ',
                                    style: GoogleFonts.poppins(
                                      color: ThemeClass.primaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '9am - 10pm',
                                        style: GoogleFonts.poppins(
                                          color: ThemeClass.secondaryColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/mile.svg'),
                                      const SizedBox(width: 2),
                                      Text(
                                        '1Km',
                                        style: GoogleFonts.poppins(
                                          color: ThemeClass.primaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      SvgPicture.asset(
                                          'assets/images/star_2.svg'),
                                      const SizedBox(width: 4),
                                      Text(
                                        '5.0',
                                        style: GoogleFonts.poppins(
                                          color: ThemeClass.primaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      SvgPicture.asset(
                                          'assets/images/check.svg'),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Verified',
                                        style: GoogleFonts.poppins(
                                          color: ThemeClass.primaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: ThemeClass.containerColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Menu Items',
                                style: GoogleFonts.poppins(
                                  color: ThemeClass.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                height: 4,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: ThemeClass.brandPrimary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Reviews',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.secondaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Info',
                            style: GoogleFonts.poppins(
                              color: ThemeClass.secondaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: w,
                        height: h * 0.31,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.nextContainer.foodName,
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xff3E4462),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/star_2.svg'),
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
                                  widget.nextContainer.restuarantName,
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
                                        widget.nextContainer.imageUrl1,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  children: [
                                    Text(
                                      widget.nextContainer.food1,
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
                                          widget.nextContainer.price1,
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
                                          widget.nextContainer.price2,
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
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                const Color(0xffEDA345),
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
                                GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        count == 1 ? null : count--;
                                      },
                                    );
                                  },
                                  child: Container(
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
                                ),
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF8F5F2),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text('$count'),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        count++;
                                      },
                                    );
                                  },
                                  child: Container(
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
                                        widget.nextContainer.imageUrl2,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.nextContainer.food2,
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
                                          widget.nextContainer.secondFood1,
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
                                          widget.nextContainer.secondFood2,
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
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                const Color(0xffEDA345),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOutScreen(
                        checkOutScreen: MyContainer(
                          food1: widget.nextContainer.food1,
                          food2: widget.nextContainer.food2,
                          foodName: widget.nextContainer.foodName,
                          imageUrl1: widget.nextContainer.imageUrl1,
                          imageUrl2: widget.nextContainer.imageUrl2,
                          price1: widget.nextContainer.price1,
                          price2: widget.nextContainer.price2,
                          restuarantName: widget.nextContainer.restuarantName,
                          secondFood1: widget.nextContainer.secondFood1,
                          secondFood2: widget.nextContainer.secondFood2,
                          bgImage: widget.nextContainer.bgImage,
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: w,
                  height: w * 0.15,
                  decoration: BoxDecoration(
                    color: ThemeClass.containerColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: ThemeClass.brandPrimary,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          count == 1 ? '$count item' : '$count items',
                          style: GoogleFonts.poppins(
                            color: ThemeClass.containerColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Checkout',
                          style: GoogleFonts.poppins(
                            color: ThemeClass.containerColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '$count X ' + widget.nextContainer.price1,
                          style: GoogleFonts.poppins(
                            color: ThemeClass.containerColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
