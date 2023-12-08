import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 55,
      height: 55,
      textStyle: const TextStyle(
        fontSize: 20,
        color: kwhite,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: kyellow),
        borderRadius: BorderRadius.circular(6),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedboxwithheight(kheight! * .07),
            SizedBox(
              height: kheight! * .34,
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'WE SEE SHOP',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: kwhite,
                      ),
                    ),
                  ),
                  sizedboxwithheight(kheight! * .04),
                  Center(child: Image.asset('asset/images/phone img.png')
                      // CircleAvatar(
                      //   radius: 70,
                      //   backgroundImage: AssetImage(
                      //     'asset/images/phone img.png',
                      //   ),
                      // ),
                      ),
                ],
              ),
            ),
            SizedBox(
              // width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Enter OTP'),
                    sizedboxwithheight(kheight! * .01),
                    const Text('Please enter your OTP sent to your number'),
                    sizedboxwithheight(kheight! * .04),
                    Pinput(
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                    ),
                    CustomButton(
                      txt: 'Continue',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CustumNav(),
                        ));
                      },
                      foregroundColor: klightBlack,
                      backgroundColor: kyellow,
                    ),
                    Center(
                      child: Column(
                        children: [
                          text15Withbold("Dind't recieve code yet?"),
                          sizedboxwithheight(kheight! * .04),
                          Row(
                            children: [
                              const Expanded(
                                child: SizedBox(
                                  child: Divider(
                                    color: kgrey,
                                  ),
                                ),
                              ),
                              sizedboxwithWidth(kwidth! * .05),
                              const Text('or'),
                              sizedboxwithWidth(kwidth! * .05),
                              const Expanded(
                                child: SizedBox(
                                  child: Divider(
                                    color: kgrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          sizedboxwithheight(kheight! * .04),
                          text15Withbold('Try sign in with'),
                          const Text('_________'),
                        ],
                      ),
                    ),
                    sizedboxwithheight(kheight! * .04),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          foregroundColor: klightBlack,
                          foregroundImage: AssetImage(
                            'asset/images/google.jpg',
                          ),
                        ),
                        CircleAvatar(
                          foregroundColor: klightBlack,
                          foregroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRESdjs3BeGo3B78LUhxN0Bk6Qylio7m9smZg&usqp=CAU',
                          ),
                        ),
                        CircleAvatar(
                          foregroundColor: klightBlack,
                          foregroundImage: AssetImage(
                            'asset/images/x.jpg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
