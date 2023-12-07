import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'asset/images/earth.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 16.0,
            right: 76.0,
            bottom: 16.0,
            child: TextField(
              style: TextStyle(color: kblack),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: kblack),
                hintText: 'Enter your location',
                filled: true,
                fillColor: kwhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: Container(
              decoration: const BoxDecoration(
                color: kyellow,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              width: 60,
              height: 61,
              child: const Icon(
                Icons.location_on,
                color: kblack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
