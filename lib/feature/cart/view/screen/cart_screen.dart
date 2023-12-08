import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/address_container.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_item_container.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/liked_tiles.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/main_heading.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/price_container.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/save_container.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/top_tile.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const TopTittle(
                text: 'Cart',
              ),
              const CartItemContainer(),
              sizedboxwithheight(kheight! * .02),
              const MainHeading(
                text: 'Shipping address',
                clr: kwhite,
                fontSize: 18,
              ),
              sizedboxwithheight(kheight! * .02),
              const AddressContainer(),
              sizedboxwithheight(kheight! * .02),
              const MainHeading(
                text: 'You may also like this',
                clr: kwhite,
                fontSize: 17,
              ),
              sizedboxwithheight(kheight! * .02),
              const LikedTiles(),
              sizedboxwithheight(kheight! * .01),
              const Text('1 product selected for order'),
              CustomButton(
                txt: 'PLACE OREDER',
                onPressed: () {},
                foregroundColor: kblack,
                backgroundColor: kyellow,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coupans',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Veiw all coupans'),
                ],
              ),
              sizedboxwithheight(kheight! * .02),
              const SaveContainer(),
              sizedboxwithheight(kheight! * .02),
              const PriceContainer(),
              sizedboxwithheight(kheight! * .1),
            ],
          ),
        ),
      ),
    );
  }
}
