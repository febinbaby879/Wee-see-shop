import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class RewardTile extends StatelessWidget {
  const RewardTile({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> borderColor = [
      kyellow,
      Colors.green,
      Colors.red,
      Colors.blue,
    ];
    List<String> rewardIcons = [
      'asset/images/reward item 1.png',
      'asset/images/reward icon 2.png',
      'asset/images/reward item 3.png',
      'asset/images/reward item 4.png',
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 100, top: 20),
      child: SizedBox(
        //width: 500,
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: borderColor[index]),
                color: kMainBlack,
              ),
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  sizedboxwithheight(kheight! * .03),
                  SizedBox(
                    width: 150,
                    height: 80,
                    child: Image.asset(
                      rewardIcons[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  sizedboxwithheight(kheight! * .03),
                  const Text(' Get 20% off on \nselected brands'),
                  sizedboxwithheight(kheight! * .03),
                  SizedBox(
                    height: 20,
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          borderColor[index],
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'REDEEM',
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
