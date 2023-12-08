import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class SaveContainer extends StatelessWidget {
  const SaveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kyellow),
      ),
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
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
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
    );
  }
}
