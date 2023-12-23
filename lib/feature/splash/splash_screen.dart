import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/authentication/view/screens/number_input.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    navigate(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'asset/images/we see shop splash.png',
              fit: BoxFit.cover,
            ),
          ),
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

  void navigate(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const NumberScreen(),
      ),
    );
  }
}
