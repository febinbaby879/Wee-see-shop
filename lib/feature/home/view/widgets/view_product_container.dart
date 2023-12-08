import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class ViewProductContaner extends StatelessWidget {
  const ViewProductContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Container(
            height: kheight! * .09,
            decoration: BoxDecoration(
              color: klightOrange,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                sizedboxwithWidth(kwidth! * .02),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'asset/images/cart like image2.png',
                  ),
                ),
                sizedboxwithWidth(kwidth! * .03),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Christine',
                      style: TextStyle(color: kblack),
                    ),
                    Text(
                      'Nike sowroom',
                      style: TextStyle(color: kblack),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: kheight! * .03,
                  width: kwidth! * .3,
                  decoration: BoxDecoration(
                    color: kblack,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'View product',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                sizedboxwithWidth(kwidth! * .02)
              ],
            ),
          ),
        )
      ],
    );
  }
}
