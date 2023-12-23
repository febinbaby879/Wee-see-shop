import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/profile/view/widgets/help_center.dart';
import 'package:e_commerce_app/feature/profile/view/widgets/order_screen.dart';
import 'package:e_commerce_app/feature/profile/view/widgets/settings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            sizedboxwithheight(kheight! * .06),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(7),
                ),
                border: Border.all(color: kyellow),
              ),
              width: 100,
              height: 100,
              child: Image.asset(
                'asset/images/person.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Name'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: kyellow,
                  ),
                ),
              ],
            ),
            profileTile(
              'Orders',
              'Check your order status',
              Icons.border_outer_rounded,
              const OrderScreen(),
              context,
            ),
            profileTile(
              'Help centre',
              'We are here to help you anything',
              Icons.question_mark,
              const HelpCenterScreen(),
              context,
            ),
            profileTile(
              'Settings',
              'Help regarding your recent purchase',
              Icons.settings,
              const SettingsScreen(),
              context,
            ),
            sizedboxwithheight(kheight! * .06),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('FAQ\'s'),
                  sizedboxwithheight(kheight! * .02),
                  const Text('ABOUT US'),
                  sizedboxwithheight(kheight! * .02),
                  const Text('TERMS OF USE'),
                  sizedboxwithheight(kheight! * .02),
                  const Text('PRIVACY POLICY'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileTile(
    String frst,
    scd,
    IconData icon,
    Widget widget,
    BuildContext context,
  ) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      ),
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Icon(icon),
            sizedboxwithWidth(kwidth! * .05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(frst),
                Text(scd),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_circle_right,
              color: kyellow,
            )
          ],
        ),
      ),
    );
  }
}
