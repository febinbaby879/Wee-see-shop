import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
import 'package:e_commerce_app/feature/home/view/screens/detail_screen/detail_screen.dart';
import 'package:e_commerce_app/feature/home/view/screens/offer_after_click/top_items.dart';
import 'package:flutter/material.dart';

class OffersTileHotDealsScreen extends StatelessWidget {
  const OffersTileHotDealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: kblack,
        ),
        child: Column(
          children: [
            sizedboxwithheight(kheight! * .06),
            const TopItem(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Premium'),
                Text(
                  'Hot Deals',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Co ords'),
              ],
            ),
            sizedboxwithheight(kheight! * .03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                children: [
                  miniConta('Filter 1'),
                  sizedboxwithWidth(kwidth! * .03),
                  miniConta('Filter 2'),
                ],
              ),
            ),
            sizedboxwithheight(kheight! * .03),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    SizedBox(
                      width: kwidth! / 2.3,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          List<String> images = [
                            'asset/images/shoe 2.jpg',
                            'asset/images/shoe 3.jpeg',
                            'asset/images/Rectangle 2656.png',
                            'asset/images/cart like image2.png',
                          ];
                          List<Color> colors = [
                            kblack,
                            Colors.red,
                            const Color.fromRGBO(83, 83, 83, 1.0),
                            kyellow,
                          ];
                          return InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  img: images[index],
                                ),
                              ),
                            ),
                            child: CartLikedItemBuilder(
                              color: colors[index],
                              image: images[index],
                            ),
                          );
                        },
                      ),
                    ),
                    sizedboxwithWidth(kwidth! * .03),
                    SizedBox(
                      height: kheight!,
                      width: kwidth! / 2.3,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          List<String> images = [
                            'asset/images/Rectangle 2656.png',
                            'asset/images/cart like image2.png',
                            'asset/images/shoe 2.jpg',
                            'asset/images/shoe 3.jpeg',
                          ];
                          List<Color> colors = [
                            const Color.fromRGBO(83, 83, 83, 1.0),
                            kyellow,
                            kblack,
                            Colors.red
                          ];
                          return InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  img: images[index],
                                ),
                              ),
                            ),
                            child: CartLikedItemBuilder(
                              color: colors[index],
                              image: images[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget miniConta(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kyellow),
        borderRadius: BorderRadius.circular(12),
      ),
      width: kwidth! / 2.3,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}

