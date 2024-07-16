import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class RecentProjectCard extends StatelessWidget {
  const RecentProjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 140,
          width: 180,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://spaces.in/cdn/shop/files/1065062-1.jpg?v=1700116852&width=533'))),
        ),
        Column(
          children: [
            Text(
              '     Luxur Living Room',
              style: textstyle4,
            ),
            Text(
              '     In Manhattan',
              style: textstyle4,
            ),
            const Text(
              '''
         A vibrant, multi-colored carpet featuring
           eclectic patterns, adding warmth and
       character to a lively family gathering space.''',
              style: TextStyle(fontSize: 8),
            )
          ],
        )
      ],
    );
  }
}
