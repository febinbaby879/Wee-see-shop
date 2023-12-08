import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
import 'package:flutter/material.dart';

class LikedTiles extends StatelessWidget {
  const LikedTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: ListView.separated(
        separatorBuilder: (context, index) => sizedboxwithWidth(
          kwidth! * .02,
        ),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
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
            AppTheme.kred
          ];
          return CartLikedItemBuilder(
            color: colors[index],
            image: images[index],
          );
        },
      ),
    );
  }
}
