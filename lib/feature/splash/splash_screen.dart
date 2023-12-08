import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/authentication/view/screens/number_input.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       // fit: ,
        children: [
          // Full-cover GIF image
          Positioned.fill(
            child: Image.asset(
              'asset/images/wee see shp.gif',
              fit: BoxFit.cover,
            ),
          ),
          // Positioned at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                txt: 'Continue',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const NumberScreen(),
                    ),
                  );
                },
                foregroundColor: kblack,
                backgroundColor: kyellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
