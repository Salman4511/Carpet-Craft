import 'package:carpet_craft/utils/constatnts.dart';
import 'package:carpet_craft/widgets/product_card_widget.dart';
import 'package:carpet_craft/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgrey.shade100,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: kgrey.withOpacity(0.9))),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '       Search',
                      style: TextStyle(color: kgrey),
                    )),
              ),
            ),
            kheight10,
            Row(
              children: [
                kwidth30,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Persian Tabris',style: textstyle3,),
                    const Text('10,000 results',style: TextStyle(color: kgrey),)
                  ],
                ),
                const Spacer(),
                Container(
                  height: 28,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: kgrey.withOpacity(0.9))),
                  child: const Row(
                    children: [
                      Text(
                        '       Filters',
                        style: TextStyle(color: kgrey,fontSize: 10),
                      ),
                    ],
                  ),
                ),
                kwidth30
              ],
            ),
            kheight20,
            SizedBox(
              height: 1000,
              child: ListView.builder(
                itemBuilder: (context, index) => 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
              
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductCardWidget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa8CUUIcBlzJ91iE_2GbLHfETBfXUBqHXWqA&s',),
                    kwidth10,
                    ProductCardWidget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_O8Q1Use0Y1dRRnhpjxEyUUxM950sWpKb_fI3G2MHHjVnrOygtSX7qngUnS_2UmVkdr8&usqp=CAU',)
                  ],
                ),
              )
              ,),
            )
          ],
        ),
      )),
    );
  }
}

