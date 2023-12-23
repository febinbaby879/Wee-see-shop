import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/top_tile.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopTittle(
                text: 'Help centre',
                function: () => Navigator.of(context).pop(),
              ),
              Row(
                children: [
                  const SizedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Help centre',
                            style: TextStyle(fontSize: 19),
                          ),
                          Text('We are happy to help you'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        'asset/images/helpcentre-rafiki 1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              sizedboxwithheight(kheight! * .02),
              const Text('Need help woth your recent purchase'),
              sizedboxwithheight(kheight! * .02),
              Container(
                padding: const EdgeInsets.all(10),
                color: klightGrey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'asset/images/person.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        sizedboxwithWidth(kwidth! * .03),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Air jorden Dry Fit'),
                            Text('Nike Showroom, Bangalore'),
                            Text('Size : 32'),
                          ],
                        )
                      ],
                    ),
                    sizedboxwithheight(kheight! * .02),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kyellow,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text('Cancel'),
                          ),
                        ),
                        sizedboxwithWidth(kwidth! * .06),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kyellow,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text('Edit'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              sizedboxwithheight(kheight! * .02),
              const Text('More Queries Related To Your Experience'),
              sizedboxwithheight(kheight! * .02),
              const Text('Payment , Refund'),
              sizedboxwithheight(kheight! * .02),
              const Text('Discounts, Coupons'),
              sizedboxwithheight(kheight! * .02),
              const Text('Account Related'),
              sizedboxwithheight(kheight! * .02),
              const Text('Others'),
            ],
          ),
        ),
      ),
    );
  }
}
