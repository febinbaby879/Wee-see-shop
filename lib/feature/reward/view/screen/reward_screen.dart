import 'package:e_commerce_app/feature/reward/view/widgets/app_bar.dart';
import 'package:e_commerce_app/feature/reward/view/widgets/redeem_contaner.dart';
import 'package:e_commerce_app/feature/reward/view/widgets/reward_container.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(220),
          child: AppBaar(),
        ),
        body: TabBarView(
          children: [
            RewardWallet(),
            Radeem(),
          ],
        ),
      ),
    );
  }

  Widget topIcon() {
    return const Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        backgroundImage: AssetImage('asset/images/image 49.png'),
      ),
    );
  }
}
