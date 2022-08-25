import 'package:flutter/material.dart';

import '../../cores/widgets/containers.dart';

class MenuItem extends StatelessWidget {
  final MyContainer nextContainer;
  const MenuItem({
    Key? key,
    required this.nextContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: h * 0.3,
              width: w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(nextContainer.bgImage),
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
