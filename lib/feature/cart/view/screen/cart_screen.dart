import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/address_container.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_item_container.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
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
              const TopTittle(),
              const CartItemContainer(),
              sizedboxwithheight(kheight! * .02),
              mainHeading('Shipping address', kwhite, 18),
              sizedboxwithheight(kheight! * .02),
              const AddressContainer(),
              sizedboxwithheight(kheight! * .02),
              mainHeading('You may also like this', kwhite, 17),
              sizedboxwithheight(kheight! * .02),
              SizedBox(
                height: kheight! * .422,
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
                      Colors.red
                    ];
                    return CartLikedItemBuilder(
                      color: colors[index],
                      image: images[index],
                    );
                  },
                ),
              ),
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
              Container(
                decoration: BoxDecoration(border: Border.all(color: kyellow)),
                width: double.infinity,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Save upto 900/-',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          sizedboxwithheight(kheight! * .01),
                          const Text(
                            'Get upto 30% off by using weseeshop coins',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Center(
                        child: Text('Apply'),
                      ),
                    ),
                    sizedboxwithWidth(kwidth! * .02)
                    //
                  ],
                ),
              ),
              sizedboxwithheight(kheight! * .02),
              Container(
                color: kwhite,
                width: double.infinity,
                height: 215,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          mainHeading('Price Details', kblack, 18),
                          const Text(
                            '(1 item)',
                            style: TextStyle(color: kblack),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: kblack,
                    ),
                    pricedetailRowText('Total MRP', '\$4000'),
                    const Divider(
                      color: kblack,
                    ),
                    pricedetailRowText('Discount', '\$430'),
                    pricedetailRowText('Coin discount', '\$320'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mainHeading('Price Details', kblack, 18),
                          const Text(
                            '\$4750',
                            style: TextStyle(color: kblack),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              sizedboxwithheight(kheight! * .1)
            ],
          ),
        ),
      ),
    );
  }

  Padding pricedetailRowText(String category, amnt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: const TextStyle(
              color: kblack,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            amnt,
            style: const TextStyle(
              color: kblack,
              fontWeight: FontWeight.w200,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget mainHeading(String text, Color clr, double fontsize) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(
          color: clr,
          fontSize: fontsize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
