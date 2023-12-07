import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class AppBaar extends StatelessWidget {
  const AppBaar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: sizedboxwithWidth(kwidth! * .09),
      title: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your Balance',
            style: TextStyle(fontSize: 16), // Adjust the font size as needed
          ),
          Text(
            'Subtitle Here',
            style: TextStyle(
              fontSize: 12,
              color: kgrey,
            ),
          ),
        ],
      ),
      actions: const [
        CircleAvatar(
          radius: 17,
          foregroundImage: AssetImage('asset/images/image 49.png'),
        ),
      ],
      bottom: TabBar(
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
