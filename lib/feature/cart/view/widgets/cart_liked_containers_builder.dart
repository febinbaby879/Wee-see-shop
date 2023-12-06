import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:flutter/material.dart';

class CartLikedItemBuilder extends StatelessWidget {
  const CartLikedItemBuilder({
    required this.image,
    required this.color,
    super.key,
  });
  final Color color;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 210,
      width: 190,
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 190,
            height: 200,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Stack(
            alignment: Alignment.topLeft,
            children: [
              SizedBox(
                width: 190,
                height: 30,
                child: Image.asset('asset/images/unoo.png'),
              ),
              const Positioned(
                left: 50,
                top: 5,
                child: Text('Jarden Dry fit'),
              ),
            ],
          ),
          sizedboxwithheight(kheight! * .01),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 7),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Nike'),
                  sizedboxwithheight(kheight! * .006),
                  const Text('H3HS'),
                  sizedboxwithheight(kheight! * .006),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Rs 11,270 ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '14,904',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: kgrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '42% off',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  sizedboxwithheight(kheight! * .006),
                  Container(
                    width: 130,
                    height: 25,
                    decoration: const BoxDecoration(color: klightBlack),
                    child: const Center(child: Text('392 UNITS SOLD')),
                  ),
                  sizedboxwithheight(kheight! * .006),
                ],
              ),
            ),
          ),
          sizedboxwithheight(kheight! * .006),
          Container(
            color: kblack,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                SizedBox(
                  width: 190,
                  height: 30,
                  child: Image.asset('asset/images/unoo.png'),
                ),
                const Positioned(
                  left: 40,
                  child: Text(
                    '.',
                    style: TextStyle(
                      color: AppTheme.kred,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Positioned(
                  left: 50,
                  top: 5,
                  child: Text('ends in 03:23:PM'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
