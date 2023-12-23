import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/cart_liked_containers_builder.dart';
import 'package:flutter/material.dart';

class CustumShowModelBottumSheet extends StatelessWidget {
  const CustumShowModelBottumSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              height: 150,
              child: Center(
                child: Image.asset('asset/images/puma.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Staff available to connect',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            SizedBox(
              height: 250,
              child: ListView.separated(
                separatorBuilder: (context, index) => sizedboxwithheight(
                  kheight! * .01,
                ),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: kwhite),
                      ),
                      child: Row(
                        children: [
                          sizedboxwithWidth(kwidth! * .03),
                          const Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'asset/images/cart like image2.png',
                                ),
                              ),
                              Positioned(
                                right: 4,
                                child: Icon(
                                  Icons.do_disturb_on_rounded,
                                  color: Colors.green,
                                  size: 8,
                                ),
                              ),
                            ],
                          ),
                          sizedboxwithWidth(kwidth! * .03),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Amanda',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('Staff |'),
                                  Text('Connected'),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: kyellow),
                            ),
                            width: 100,
                            height: 30,
                            child: const Center(
                              child: Text('Connect'),
                            ),
                          ),
                          sizedboxwithWidth(kwidth! * .02)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            SizedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
