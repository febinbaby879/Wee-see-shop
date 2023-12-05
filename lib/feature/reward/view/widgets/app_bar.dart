import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class AppBaar extends StatelessWidget {
  const AppBaar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Column(
        children: [
          Text(
            'Your Balance',
          ),
        ],
      ),
      actions: const [
        CircleAvatar(
          radius: 17,
          foregroundImage: AssetImage(
            'asset/images/image 49.png',
          ),
        ),
        //kwidth,
      ],
      bottom: TabBar(
        //dividerColor: kyellow,
        labelColor: kwhite,
        unselectedLabelColor: kgrey,
        tabs: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: const Tab(
              text: 'Reward wallet',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: const Tab(
              text: 'Redeem',
            ),
          ),
        ],
      ),
    );
  }
}
