import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(40.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      color: kblack,
      child: const TabBar(
        indicatorColor: kyellow,
        tabs: [
          Tab(
            text: 'Reward Wllet',
          ),
          Tab(
            text: 'Redeem',
          ),
        ],
      ),
    );
  }
}
