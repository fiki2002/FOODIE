import 'package:flutter/material.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({ Key? key }) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      body: const Padding(
         padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 68,
        ),
        ),
        
    );
  }
}