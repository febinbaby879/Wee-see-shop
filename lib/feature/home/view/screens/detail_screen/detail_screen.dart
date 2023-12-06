import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
import 'package:e_commerce_app/feature/home/view/screens/detail_screen/custum_sheet.dart';
import 'package:e_commerce_app/feature/home/view/screens/offer_after_click/offer_tile_navigate.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedboxwithheight(kheight! * .05),
            const TopItem(),
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: InkWell(
                    onTap: () => _showCustomBottomSheet(context),
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: kyellow,
                      backgroundImage: AssetImage('asset/images/live.png'),
                    ),
                  ),
                ),
              ],
            ),
            sizedboxwithheight(kheight! * .02),
            const Text(
              "Nike Dry Fit",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            sizedboxwithheight(kheight! * .01),
            const Text('Men Sweatshirt New Collection Full Colour Blocked'),
            sizedboxwithheight(kheight! * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(color: kwhite),
                width: double.infinity,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Top Discount On The Product',
                        style: TextStyle(color: kblack),
                      ),
                      sizedboxwithheight(kheight! * .01),
                      Row(
                        children: [
                          const Text(
                            '60% off',
                            style: TextStyle(
                              color: kblack,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          sizedboxwithWidth(kwidth! * .04),
                          const Text(
                            '₹9,749',
                            style: TextStyle(
                              color: kblack,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          sizedboxwithWidth(kwidth! * .04),
                          const Text(
                            '₹5,999',
                            style: TextStyle(
                              color: kblack,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sizedboxwithheight(kheight! * .02),
                    const Text('Size'),
                    sizedboxwithheight(kheight! * .02),
                    Row(
                      children: [
                        varientCircle('S'),
                        sizedboxwithWidth(kwidth! * .02),
                        varientCircle('M'),
                        sizedboxwithWidth(kwidth! * .02),
                        varientCircle('L')
                      ],
                    ),
                    sizedboxwithheight(kheight! * .02),
                    Container(
                      color: kwhite,
                      height: 40,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All offers and coupans are this product',
                              style: TextStyle(color: kblack),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: kblack,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  butttuns(kyellow, kblack, kyellow, 'Add to cart'),
                  sizedboxwithWidth(kwidth! * .02),
                  butttuns(kyellow, kyellow, kblack, 'Buy now'),
                ],
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Matching products',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 380,
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container varientCircle(text) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: kblack,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container butttuns(border, under, txt, String data) {
    return Container(
      decoration: BoxDecoration(
        color: under,
        border: Border.all(color: border),
        borderRadius: BorderRadius.circular(25),
      ),
      width: kwidth! / 2.3,
      height: 50,
      child: Center(
        child: Text(
          data,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: txt,
          ),
        ),
      ),
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (BuildContext context) {
        return const CustumShowModelBottumSheet();
      },
    );
  }
}
