import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';

class Radeem extends StatelessWidget {
  const Radeem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            sizedboxwithheight(kheight! * .016),
            const Text('Radeem coupan towards your next purchase'),
            sizedboxwithheight(kheight! * .026),
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kwhite,
              ),
              child: Column(
                children: [
                  miniContainer('5', AppTheme.kred, kyellow),
                  sizedboxwithheight(kheight! * .026),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('asset/images/lock 2.webp'),
                        backgroundColor: kgrey,
                      ),
                      const Text(
                        'Coupan unlocked',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        width: 150,
                        height: 36,
                        child: const Center(
                          child: Text(
                            'Radeem for 200',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      sizedboxwithheight(kheight! * .02),
                    ],
                  ),
                ],
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kwhite,
              ),
              child: Column(
                children: [
                  miniContainer('12', AppTheme.kred, klightBlack),
                  sizedboxwithheight(kheight! * .026),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('asset/images/lock 2.webp'),
                        backgroundColor: kgrey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '  Locked this redeem at 7 pts',
                            style: TextStyle(color: kgrey, fontSize: 12),
                          ),
                          SizedBox(
                            width: kwidth! * .8,
                            child: GFProgressBar(
                              percentage: 0.7,
                              lineHeight: 10,
                              backgroundColor: klightGrey,
                              progressBarColor: kgrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sizedboxwithheight(kheight! * .02),
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kwhite,
              ),
              child: Column(
                children: [
                  miniContainer('23', kyellow, kgrey),
                  sizedboxwithheight(kheight! * .026),
                ],
              ),
            ),
            sizedboxwithheight(kheight! * .05),
          ],
        ),
      ),
    );
  }

  Container miniContainer(String percen, Color first, second) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [
            first,
            second,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$percen% ',
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const Text(
            'of for entire order',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
