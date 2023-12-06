import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/screen/cart_screen.dart';
import 'package:e_commerce_app/feature/home/view/screens/home_screen.dart';
import 'package:e_commerce_app/feature/liaison/view/screens/liaison_screen.dart';
import 'package:e_commerce_app/feature/reward/view/screen/reward_screen.dart';
import 'package:e_commerce_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class CustumNav extends StatefulWidget {
  const CustumNav({Key? key}) : super(key: key);

  @override
  State<CustumNav> createState() => _CustumNavState();
}

class _CustumNavState extends State<CustumNav> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 2);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 2);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final pages = [
    const LiasonScreen(),
    const RewardScreen(),
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(pages.length, (index) => pages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (pages.length <= maxCount)
          ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: AnimatedNotchBottomBar(
                /// Provide NotchBottomBarController
                notchBottomBarController: _controller,
                color: kyellow,
                showLabel: true,
                notchColor: kwhite,
                removeMargins: true,
                bottomBarWidth: 500,
                durationInMilliSeconds: 300,
                bottomBarItems: const [
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.calendar_view_day_sharp,
                      color: kgrey,
                    ),
                    activeItem: Icon(
                      Icons.calendar_view_day_sharp,
                      color: kgrey,
                    ),
                    itemLabel: 'Liaison',
                  ),
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.star_outline,
                      color: kgrey,
                    ),
                    activeItem: Icon(
                      Icons.star_outline,
                      color: kgrey,
                    ),
                    itemLabel: 'Rewards',
                  ),
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.home_outlined,
                      color: kgrey,
                    ),
                    activeItem: Icon(
                      Icons.home_outlined,
                      color: kgrey,
                    ),
                    itemLabel: 'Home',
                  ),
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.card_giftcard,
                      color: kgrey,
                    ),
                    activeItem: Icon(
                      Icons.card_giftcard,
                      color: kgrey,
                    ),
                    itemLabel: 'Cart',
                  ),
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.person_outline_rounded,
                      color: kgrey,
                    ),
                    activeItem: Icon(
                      Icons.person_outline_rounded,
                      color: kgrey,
                    ),
                    itemLabel: 'Profile',
                  ),
                ],
                onTap: (index) {
                  _pageController.jumpToPage(index);
                },
              ),
            )
          : null,
    );
  }
}
