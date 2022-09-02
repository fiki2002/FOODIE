import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cores/constants/color.dart';

class CompleteOrder extends StatefulWidget {
  const CompleteOrder({Key? key}) : super(key: key);

  @override
  State<CompleteOrder> createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: Column(
        children: [
          SizedBox(
            height: h * 0.7,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  bottom: 35,
                  left: 45,
                  right: 20,
                  child: Image.asset('assets/images/illustration.png'),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Your order is confirmed!',
                style: GoogleFonts.poppins(
                  color: ThemeClass.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We\'ll deliver your order immediately and ',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: ThemeClass.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'make sure your order is put on the doorstep.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: ThemeClass.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36,),
                
                decoration: BoxDecoration(
                  color: ThemeClass.brandPrimary,
                  borderRadius: BorderRadius.circular(8),
                
                ),
                  child: Text(
                  'Check order status',
                  style: GoogleFonts.poppins(
                    color: ThemeClass.containerColor,
                  ),
                ),
              )
            ],
          ),  
        ],
      ),
    );
  }
}