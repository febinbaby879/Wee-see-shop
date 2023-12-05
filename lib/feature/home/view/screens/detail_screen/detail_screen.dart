import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
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
                  child: GestureDetector(
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
            const Text("Nike Dry Fit"),
            const Text('Men Sweatshirt New Collection Full Colour Blocked'),
            Container(
              decoration: const BoxDecoration(color: kwhite),
              width: double.infinity,
              height: 70,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Discount On The Product',
                    style: TextStyle(color: kblack),
                  ),
                  Row(
                    children: [
                      Text(
                        '60% off',
                        style: TextStyle(color: kblack),
                      ),
                      Text(
                        '₹9,749',
                        style: TextStyle(color: kblack),
                      ),
                      Text(
                        '₹5,999',
                        style: TextStyle(color: kblack),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Size'),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kwhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'S',
                            style: TextStyle(
                              color: kblack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      sizedboxwithWidth(kwidth! * .02),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kwhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'M',
                            style: TextStyle(
                              color: kblack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      sizedboxwithWidth(kwidth! * .02),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kwhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'L',
                            style: TextStyle(
                              color: kblack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: kwhite,
                    height: 40,
                    child: const Row(
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
                ],
              ),
            ),
            Row(
              children: [
                butttuns(kyellow, kblack, kyellow, 'Add to cart'),
                sizedboxwithWidth(kwidth! * .02),
                butttuns(kyellow, kyellow, kblack, 'Buy now'),
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Matching products'),
            ),
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
          ],
        ),
      ),
    );
  }

  Container butttuns(Color border, under, txt, String data) {
    return Container(
      decoration: BoxDecoration(
        color: under,
        border: Border.all(color: border),
        borderRadius: BorderRadius.circular(25),
      ),
      width: kwidth! / 2.1,
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
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: kyellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                height: 150,
              ),
              const Text('Staff available to connect'),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        children: [
                          const CircleAvatar(),
                          const Column(
                            children: [
                              Text('data'),
                              Row(
                                children: [Text('data'), Text('data')],
                              ),
                            ],
                          ),
                          Container(
                            child: const Text('Connect'),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
