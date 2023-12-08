import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class RewardWallet extends StatelessWidget {
  const RewardWallet({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> rewardImage = [
      'asset/images/rewardimg1.png',
      'asset/images/reeward Image 2.png',
      'asset/images/reward image 3.png',
    ];
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            width: double.infinity,
            height: 153,
            decoration: BoxDecoration(
              border: Border.all(
                color: kyellow,
              ),
              color: kblack,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: kwidth! * .3,
                  height: 150,
                  child: Image.asset(
                    rewardImage[index],
                    fit: BoxFit.cover,
                  ),
                ),
                sizedboxwithWidth(kwidth! * .02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Get 10% off On next order',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: kwidth! * .55,
                      child: const Text(
                        'Daily login bonus. 300 Max. Discount',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 24,
                      color: klightGrey,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('DAILY15'),
                          Icon(
                            Icons.border_all_outlined,
                            color: kyellow,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
