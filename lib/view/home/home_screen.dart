import 'package:carpet_craft/utils/constatnts.dart';
import 'package:carpet_craft/widgets/banner_card_widget.dart';
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

        ],
      )),
    );
  }
}

