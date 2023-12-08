import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/reward/view/widgets/app_bar.dart';
import 'package:e_commerce_app/feature/reward/view/widgets/redeem_contaner.dart';
import 'package:e_commerce_app/feature/reward/view/widgets/reward_container.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(220.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              topIcon(),
            ],
            bottom: const CustomTabBar(),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Your Balence',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                sizedboxwithheight(kheight! * .02),
                const Text(
                  '600 Points',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            RewardWallet(),
            Radeem(),
          ],
        ),
      ),
    );
  }

  Widget topIcon() {
    return const Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('asset/images/image 49.png'),
      ),
    );
  }
}
