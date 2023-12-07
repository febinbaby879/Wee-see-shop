import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/home/view/widgets/banners.dart';
import 'package:e_commerce_app/feature/home/view/widgets/brand_banner.dart';
import 'package:e_commerce_app/feature/home/view/widgets/offer_tile.dart';
import 'package:e_commerce_app/feature/home/view/widgets/reward_tile.dart';
import 'package:e_commerce_app/feature/home/view/widgets/top_icons.dart';
import 'package:e_commerce_app/feature/home/view/widgets/view_product_container.dart';
import 'package:e_commerce_app/feature/location/view/screen/location_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustumTop(),
            const LocationContainer(),
            text('RECENT CALL'),
            const ViewProductContaner(),
            const Banners(),
            text('BRANDS NEAR YOU'),
            const BrandBanner(),
            text('OFFERS'),
            const OffersTile(),
            text('REWARDS'),
            const RewardTile(),
          ],
        ),
      ),
    );
  }

  Widget text(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: kgrey,
            ),
          ),
        ],
      ),
    );
  }
}

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const ValueKey('location_container_dismissible_key'),
      direction: DismissDirection.down,
      onDismissed: (_) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LocationScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.primaryDelta! > 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LocationScreen(),
                  ),
                );
              }
            },
            child: Center(
              child: Image.asset('asset/images/downarrow.gif'),
            ),
          ),
        ),
      ),
    );
  }
}

