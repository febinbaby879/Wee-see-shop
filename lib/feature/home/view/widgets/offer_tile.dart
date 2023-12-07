import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/home/view/screens/offer_after_click/offer_tile_navigate.dart';
import 'package:flutter/material.dart';

class OffersTile extends StatelessWidget {
  const OffersTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> brandImage = [
      'asset/images/nike.png',
      'asset/images/puma.png',
      'asset/images/LV.png',
    ];
    final List<String> offerGiffs = [
      'asset/images/nikenewgiff.gif',
      'asset/images/pumagiff.gif',
      'asset/images/lvlow.gif',
    ];
    List<Color> tileColor = [
      Colors.red,
      kyellow,
      kgrey,
    ];
    List<String> name = [
      'Nike',
      'Puma',
      'LV',
    ];

    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 10,
      ),
      child: SizedBox(
        height: 300,
        width: 500,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) =>
              sizedboxwithWidth(kwidth! * .02),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const OffersTileHotDealsScreen(),
              )),
              child: Container(
                //margin: const EdgeInsets.only(left: 10, right: 10),
                color: tileColor[index],
                width: 170,
                height: 270,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(brandImage[index]),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: Text(
                        name[index],
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      left: 10,
                      child: Text(
                        'Get 10% instant discount \non purchase of products acr\noss fashion category',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 10,
                      child: Opacity(
                        opacity: .1,
                        child: SizedBox(
                          height: 170,
                          width: 140,
                          child: Image.asset(
                            offerGiffs[index],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 250,
                      left: 10,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'View details',
                              style: TextStyle(color: tileColor[index]),
                            ),
                            sizedboxwithWidth(kwidth! * .02),
                            Icon(
                              Icons.arrow_forward,
                              color: tileColor[index],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
