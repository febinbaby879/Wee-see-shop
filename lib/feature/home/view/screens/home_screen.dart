import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/home/view/widgets/banners.dart';
import 'package:e_commerce_app/feature/home/view/widgets/brand_banner.dart';
import 'package:e_commerce_app/feature/home/view/widgets/offer_tile.dart';
import 'package:e_commerce_app/feature/home/view/widgets/reward_tile.dart';
import 'package:e_commerce_app/feature/home/view/widgets/top_icons.dart';
import 'package:e_commerce_app/feature/home/view/widgets/view_product_container.dart';
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
