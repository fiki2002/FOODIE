import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/features/screens/menu_items.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../cores/widgets/containers.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    final List<MyContainer> _myContainers = [
       MyContainer(
        foodName: 'BBQ Saga',
        imageUrl1: 'assets/images/food.jpg',
        imageUrl2: 'assets/images/bbq.jpg',
        restuarantName: 'Item7 Go, Oke-Odo.',
        price1: '2500',
        price2: '3500',
        food1: 'BBQ Special',
        food2: 'Barbeque & Vibes',
        secondFood1: '3500',
        secondFood2: '4000',
        bgImage: 'assets/images/item7.jpg',
      ),
       MyContainer(
        foodName: 'Ham Fiesta',
        imageUrl1: 'assets/images/ham.jpg',
        imageUrl2: 'assets/images/hamburger.jpg',
        restuarantName: 'The Place, Tanke',
        price1: '2000',
        price2: '1500',
        food1: 'Krabby Patty',
        food2: 'Ham Pirates',
        secondFood1: '2500',
        secondFood2: '3500',
        bgImage: 'assets/images/thePlace.jpg',
      ),
    ];
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
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, index) {
                  return MyContainer(
                    food1: _myContainers[index].food1,
                    food2: _myContainers[index].food2,
                    foodName: _myContainers[index].foodName,
                    imageUrl1: _myContainers[index].imageUrl1,
                    imageUrl2: _myContainers[index].imageUrl2,
                    price1: _myContainers[index].price1,
                    price2: _myContainers[index].price2,
                    restuarantName: _myContainers[index].restuarantName,
                    secondFood1: _myContainers[index].secondFood1,
                    secondFood2: _myContainers[index].secondFood2,
                    bgImage: _myContainers[index].bgImage,
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemCount: _myContainers.length,
              ),
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
}
