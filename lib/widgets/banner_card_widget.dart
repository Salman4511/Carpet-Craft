import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class BannerCardWidget extends StatelessWidget {
  const BannerCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 250,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    'https://englishelm.com/cdn/shop/products/395194_8_1024x1024.jpg?v=1658236560')),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight20,
              Text(
                'Choose Patters',
                style: textstyle1,
              ),
              Text(
                'Colors',
                style: textstyle1,
              ),
              Text(
                'Materials.',
                style: textstyle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
