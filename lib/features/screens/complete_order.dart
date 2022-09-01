import 'package:flutter/material.dart';

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
      body: SizedBox(
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
    );
  }
}
