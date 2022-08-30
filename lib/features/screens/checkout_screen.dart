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

  bool _value = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF8F5F2),
        body: Column(
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
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
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
                horizontal: 10,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                        scale: 2,
                        child: Radio<String>(
                          value: 'PickUp',
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => ThemeClass.brandPrimary),
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
                  const SizedBox(height: 5),
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
                        SvgPicture.asset('assets/images/note.svg'),
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
          ],
        ),
      ),
    );
  }
}
