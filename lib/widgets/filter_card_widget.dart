import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class FilterCardWidget extends StatelessWidget {
  final String title;
  final String img;
  const FilterCardWidget({
    super.key,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 113,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(img)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 94,
            height: 1,
            color: kwhite,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 1,
                height: 20,
                color: kwhite,
              ),
              Text(
                title,
                style: const TextStyle(color: kwhite),
              ),
              Container(
                width: 1,
                height: 20,
                color: kwhite,
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            width: 96,
            height: 1,
            color: kwhite,
          )
        ],
      ),
    );
  }
}
