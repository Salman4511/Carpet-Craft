import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class HeadLineWidget extends StatelessWidget {
  const HeadLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1,
              height: 20,
              color: Colors.brown,
            ),
            Text(
              'Collections',
              style: textstyle3,
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          width: 94,
          height: 1,
          color: Colors.brown,
        )
      ],
    );
  }
}
