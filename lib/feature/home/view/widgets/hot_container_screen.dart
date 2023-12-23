import 'package:e_commerce_app/feature/home/view/widgets/location_container_curving.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HotContainerScreen extends StatelessWidget {
  const HotContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'asset/images/hotDealback.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'asset/images/hotDeals.gif',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 20,
            child: CustomPaint(
              painter: OppositeCurvePainter(),
              child: InkWell(
                onTapUp: (details) => Navigator.of(context).pop(),
                child: Container(
                  height: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
