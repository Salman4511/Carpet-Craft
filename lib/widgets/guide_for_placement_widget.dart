import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';

class GuideForPlacementWidget extends StatelessWidget {
  final String title;
  final String img;
  const GuideForPlacementWidget({
    super.key,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(img)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheight45,
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: kwhite),
              ),
            ],
          ),
          kheight10,
          const Text(
            '  Tips:',
            style: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
          ),
          kheight10,
          const Text(
            '''
      Anchor the Space: Place
      the carpet under the
      front legs of your sofa
      and chairs to create a
      cohesive seating area.

      Size Matters: Ensure the
      carpet is large enough to
      fit all furniture on it or at
      least the front legs of
      major pieces.
      ''',
            style: TextStyle(color: kwhite, fontSize: 9),
          )
        ],
      ),
    );
  }
}
// Anchor the Space: Place the carpet under the front legs of your sofa and chairs to create a cohesive seating area.

// Size Matters: Ensure the carpet is large enough to fit all furniture on it or at least the front legs of major pieces.

// Focus Point: Choose a design that 
