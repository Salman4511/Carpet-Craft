import 'package:carpet_craft/utils/constatnts.dart';
import 'package:carpet_craft/widgets/banner_card_widget.dart';
import 'package:carpet_craft/widgets/filter_card_widget.dart';
import 'package:carpet_craft/widgets/guide_for_placement_widget.dart';
import 'package:carpet_craft/widgets/head_line_widget.dart';
import 'package:carpet_craft/widgets/recent_project_widget.dart';
import 'package:carpet_craft/widgets/shops_to_explore_widget.dart';
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
          child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarWidget(),
            kheight20,
            const BannerCardWidget(),
            kheight10,
            const HeadLineWidget(
              headline: 'Collections',
            ),
            kheight20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    children: [
                      const FilterCardWidget(
                        title: 'Modern Travels',
                        img:
                            'https://shop.gkwretail.com/cdn/shop/products/ModerndesignCarpetforLivingRoom3.jpg?v=1679662283&width=1445',
                      ),
                      kwidth10,
                      const FilterCardWidget(
                        title: 'Classic Elegance',
                        img:
                            'https://i.ebayimg.com/images/g/tDoAAOSwUyZkKXfI/s-l1200.jpg',
                      ),
                      kwidth10,
                      const FilterCardWidget(
                        title: 'Bohemian bliss',
                        img:
                            'https://i.ebayimg.com/thumbs/images/g/Y6MAAOSwB99dEuWa/s-l225.jpg',
                      ),
                      kwidth10,
                      const FilterCardWidget(
                        title: 'Nature\'s Beauty',
                        img:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5gFsJ8dB9PS7WmYMW7eezg_b27Rp0hzems67yyD14GuV7_XSfLE2lcE8h6irjvJkpoxQ&usqp=CAU',
                      )
                    ],
                  ),
                ),
              ),
            ),
            const HeadLineWidget(
              headline: 'Recent Projects',
            ),
            kheight20,
            const RecentProjectCard(),
            kheight20,
            const HeadLineWidget(
              headline: 'Shops to Explore',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    children: [
                      const ShopsToExploreWidget(
                        title: 'Modern',
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8KBqFUlXAPvnxM-g-B3jjPvvaD_XPcx_cg&s',
                      ),
                      kwidth10,
                      const ShopsToExploreWidget(
                        title: 'Classic',
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtil4M8Q1_qFn_6u-GR7_jdDktthRrib3eB6-61-yTN7pSKx94KJihfu-hocFHW2erhUg&usqp=CAU',
                      ),
                      kwidth10,
                      const ShopsToExploreWidget(
                        title: 'Tribal',
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvj282EYTT4bVkICc0RDaNs9XTfDhlmNgGQeiU9wC23-IpyNqKkdtZ34DzXFVnzdSFn-0&usqp=CAU',
                      ),
                      kwidth10,
                      const ShopsToExploreWidget(
                        title: 'Modern',
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8KBqFUlXAPvnxM-g-B3jjPvvaD_XPcx_cg&s',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            kheight20,
            const HeadLineWidget(
              headline: 'Guide For Placements',
            ),
            kheight20,
            const Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GuideForPlacementWidget(
                    title: 'Living Room',
                    img:
                        'https://1474899231.rsc.cdn77.org/api/cc-wallpaper-image/200/420/white-watch-light-cs587nc',
                  ),
                  GuideForPlacementWidget(
                    title: 'Dining Room',
                    img:
                        'https://img.freepik.com/free-photo/various-vegetables-black-table-with-space-message_1220-616.jpg',
                  ),
                  GuideForPlacementWidget(
                    title: 'Bedroom',
                    img:
                        'https://img.freepik.com/free-photo/horror-scene-domestic-space_23-2151503700.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1721001600&semt=ais_user',
                  )
                ],
              ),
              Positioned(
                  left: 360,
                  top: 120,
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 35,
                    color: kblue,
                  )),
              Positioned(
                  right: 360,
                  top: 120,
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 35,
                    color: kblue,
                  )),
            ]),
            kheight20
          ],
        ),
      )),
    );
  }
}
