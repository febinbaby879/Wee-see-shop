import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/main_heading.dart';
import 'package:flutter/material.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhite,
      width: double.infinity,
      height: 234,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                MainHeading(text: 'Price Details', clr: kblack, fontSize: 18),
                Text(
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainHeading(text: 'Price Details', clr: kblack, fontSize: 18),
                Text(
                  '\$4750',
                  style: TextStyle(color: kblack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget pricedetailRowText(String category, amnt) {
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
}
