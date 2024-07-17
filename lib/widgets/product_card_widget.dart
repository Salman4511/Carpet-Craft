import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String img;

  const ProductCardWidget({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      color: kwhite,
      child: Column(
        children: [
          kheight10,
          Container(
            height: 130,
            width: 100,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        img))),
          ),
          kheight10,
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  Persian Tabriz'),
                  Text(
                    '  ₹ 12,999',
                    style: TextStyle(fontSize: 12, color: kgrey),
                  ),
                  Text(
                    '  151 x 102 cm',
                    style: TextStyle(fontSize: 12, color: kgrey),
                  )
                ],
              ),
              kwidth18,
              const Icon(Icons.favorite_border)
            ],
          )
        ],
      ),
    );
  }
}
