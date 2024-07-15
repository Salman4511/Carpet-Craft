import 'package:carpet_craft/utils/constatnts.dart';
import 'package:carpet_craft/widgets/banner_card_widget.dart';
import 'package:carpet_craft/widgets/filter_card_widget.dart';
import 'package:carpet_craft/widgets/head_line_widget.dart';
import 'package:carpet_craft/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const TopBarWidget(),
          kheight20,
          const BannerCardWidget(),
          kheight10,
          const HeadLineWidget(),
          kheight20,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Row(
                  children: [
                    const FilterCardWidget(),
                    kwidth10,
                    const FilterCardWidget(),
                    kwidth10,
                    const FilterCardWidget(),
                    kwidth10,
                    const FilterCardWidget()
                  ],
                ),
              ),
            ),
          ),
          const HeadLineWidget(),
          kheight20,
          Row(
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
          )
        ],
      )),
    );
  }
}

