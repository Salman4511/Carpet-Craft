import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class FilterCardWidget extends StatelessWidget {
  const FilterCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/00/89/76/09/360_F_89760942_RmpjUzGtDcERW1rlkNaifMr58NCVu7YB.jpg')),
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
              const Text(
                'Modern Marvels',
                style: TextStyle(color: kwhite),
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
