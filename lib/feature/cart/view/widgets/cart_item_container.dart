import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class CartItemContainer extends StatelessWidget {
  const CartItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: klightGrey,
      width: double.infinity,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Image.asset(
              'asset/images/Rectangle 2701.png',
              fit: BoxFit.cover,
            ),
          ),
          sizedboxwithWidth(kwidth! * .03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nike air jarden',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buttunContainer('Size', '8'),
                    sizedboxwithWidth(kwidth! * .02),
                    buttunContainer('Qty', '1'),
                    sizedboxwithWidth(kwidth! * .09),
                    const Text('\$599/-'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buttunContainer(String text, count) {
    return Container(
      width: 86,
      decoration: BoxDecoration(
        border: Border.all(color: kwhite),
      ),
      child: Row(
        children: [
          sizedboxwithWidth(kwidth! * .01),
          Text(text),
          sizedboxwithWidth(kwidth! * .022),
          Text(count),
          sizedboxwithWidth(kwidth! * .02),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
