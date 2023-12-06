import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: kwidth! / 2.3,
              decoration: BoxDecoration(
                border: Border.all(color: kyellow),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Filter 1'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            sizedboxwithWidth(kwidth! * .04),
            Container(
              height: 40,
              width: kwidth! / 2.3,
              decoration: BoxDecoration(
                border: Border.all(color: kyellow),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Filter 2'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Row(
              children: [
                SizedBox(
                  height: kheight!,
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
                      //  InkWell(
                      //   onTap: () => Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (context) => DetailScreen(
                      //         img: images[index],
                      //       ),
                      //     ),
                      //   ),
                      return CartLikedItemBuilder(
                        color: colors[index],
                        image: images[index],
                        //),
                      );
                    },
                  ),
                ),
                sizedboxwithWidth(kwidth! * .02),
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
                      //  InkWell(
                      //   onTap: () => Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (context) => DetailScreen(
                      //         img: images[index],
                      //       ),
                      //     ),
                      //   ),
                      return CartLikedItemBuilder(
                        color: colors[index],
                        image: images[index],
                      );
                      // );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
