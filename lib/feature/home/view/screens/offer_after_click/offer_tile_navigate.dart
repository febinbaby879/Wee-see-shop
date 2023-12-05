import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
import 'package:e_commerce_app/feature/home/view/screens/detail_screen/detail_screen.dart';
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
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
            Row(
              children: [
                miniConta('Filter 1'),
                sizedboxwithWidth(kwidth! * .02),
                miniConta('Filter 2'),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    SizedBox(
                      height: kheight!,
                      width: kwidth! / 2.1,
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
                    sizedboxwithWidth(kwidth! * .02),
                    SizedBox(
                      height: kheight!,
                      width: kwidth! / 2.06,
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

  Container miniConta(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kyellow),
      ),
      width: kwidth! / 2.1,
      height: 30,
      child: Padding(
        padding: const EdgeInsets.only(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

class TopItem extends StatelessWidget {
  const TopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.remove_red_eye_outlined,
            color: kyellow,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_rounded,
            color: kyellow,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.alarm,
            color: kyellow,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.message,
            color: kyellow,
          ),
        ),
      ],
    );
  }
}
