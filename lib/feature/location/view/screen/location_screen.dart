import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/home/view/widgets/location_container_curving.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScope = FocusScope.of(context);
        if (!focusScope.hasPrimaryFocus) {
          focusScope.unfocus();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'asset/images/earth.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              left: 16.0,
              right: 76.0,
              bottom: 96.0,
              child: SizedBox(
                height: 60.0,
                child: CupertinoTextField(
                  style: TextStyle(
                    color: kblack,
                  ),
                  placeholder: 'Enter your location',
                  placeholderStyle: TextStyle(
                    fontSize: 16,
                    color: kwhite,
                  ),
                  decoration: BoxDecoration(
                    color: kgrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  cursorColor: kwhite,
                ),
              ),
            ),
            Positioned(
              right: 16.0,
              bottom: 96.0,
              child: Container(
                decoration: const BoxDecoration(
                  color: kyellow,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                width: 60,
                height: 60,
                child: const Icon(
                  Icons.location_on,
                  color: kblack,
                ),
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
      ),
    );
  }
}
