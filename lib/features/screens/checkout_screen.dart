import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cores/constants/color.dart';
import '../../cores/widgets/containers.dart';

class CheckOutScreen extends StatefulWidget {
  final MyContainer checkOutScreen;
  const CheckOutScreen({
    Key? key,
    required this.checkOutScreen,
  }) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  var _selectedRadio;
  int count = 1;

  bool _value = false;
  @override
  Widget build(BuildContext context) {
    double total = (widget.checkOutScreen.price1 * count) as double;
    print(total);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF8F5F2),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.12,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: const BoxDecoration(
                    color: ThemeClass.containerColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            'assets/images/back.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        Text(
                          'Checkout',
                          style: GoogleFonts.poppins(
                            color: ThemeClass.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: SizedBox(
                    height: h * 0.8,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Keep social distancing',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Leave your order on the doorstep',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.secondaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                Transform.scale(
                                  scale: 1,
                                  child: Switch(
                                    value: _value,
                                    onChanged: (value) {
                                      setState(
                                        () {
                                          _value = value;
                                        },
                                      );
                                    },
                                    activeColor: ThemeClass.brandPrimary,
                                    activeTrackColor: const Color(0xffEFEFF2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Deliver to:',
                                          style: GoogleFonts.poppins(
                                            color: ThemeClass.primaryColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          widget.checkOutScreen.restuarantName,
                                          style: GoogleFonts.poppins(
                                            color: ThemeClass.secondaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                    Transform.scale(
                                      scale: 1.5,
                                      child: Radio<String>(
                                        value: 'PickUp',
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ThemeClass.brandPrimary),
                                        groupValue: _selectedRadio,
                                        onChanged: (v) {
                                          setState(
                                            () {
                                              _selectedRadio = v;
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 9,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffF2F5F8),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/note.svg'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Add a note of delivery address',
                                        style: GoogleFonts.poppins(
                                          color: ThemeClass.secondaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'My Bucket',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.primaryColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                    const Icon(
                                      Icons.add,
                                      color: ThemeClass.brandPrimary,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'Add items',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.brandPrimary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
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
                                            widget.checkOutScreen.imageUrl1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      children: [
                                        Text(
                                          widget.checkOutScreen.food1,
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
                                              widget.checkOutScreen.price1,
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
                                              widget.checkOutScreen.price2,
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
                                          'assets/images/delete_icon.svg',
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
                                          borderRadius:
                                              BorderRadius.circular(4),
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
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeClass.containerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Payment',
                                  style: GoogleFonts.poppins(
                                    color: ThemeClass.primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Item total ',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'NGN ' +
                                          widget.checkOutScreen.price1 * count,
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delivery fee',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'NGN 0',
                                      style: GoogleFonts.poppins(
                                        color: ThemeClass.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Color(0xffEFEFF2),
                                  thickness: 3,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'To Pay',
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'NGN ' +
                                          widget.checkOutScreen.price1 * count,
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOutScreen(
                        checkOutScreen: MyContainer(
                          food1: widget.checkOutScreen.food1,
                          food2: widget.checkOutScreen.food2,
                          foodName: widget.checkOutScreen.foodName,
                          imageUrl1: widget.checkOutScreen.imageUrl1,
                          imageUrl2: widget.checkOutScreen.imageUrl2,
                          price1: widget.checkOutScreen.price1,
                          price2: widget.checkOutScreen.price2,
                          restuarantName: widget.checkOutScreen.restuarantName,
                          secondFood1: widget.checkOutScreen.secondFood1,
                          secondFood2: widget.checkOutScreen.secondFood2,
                          bgImage: widget.checkOutScreen.bgImage,
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: w,
                  decoration: const BoxDecoration(
                    color: ThemeClass.containerColor,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: ThemeClass.brandPrimary,
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
                          '$count X ' + widget.checkOutScreen.price1,
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
