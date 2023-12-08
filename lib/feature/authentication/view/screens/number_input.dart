import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/authentication/view/screens/otp_input_screen.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: klightBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              sizedboxwithheight(kheight! * .07),
              // Header section
              SizedBox(
                height: kheight! * .6,
                child: Column(
                  children: [
                    const Text(
                      'WE SEE SHOP',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: kwhite,
                      ),
                    ),
                    sizedboxwithheight(kheight! * .04),
                    Center(
                      child: Image.asset('asset/images/phone img.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter Mobile number',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: kwhite,
                      ),
                    ),
                    sizedboxwithheight(kheight! * .004),
                    const Text(
                      'Please enter your mobile number to continue',
                      style: TextStyle(
                        fontSize: 13,
                        color: kgrey,
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kwhite),
                        ),
                        labelStyle: TextStyle(color: kgrey),
                        labelText: '0 0 0 0 0 0 0 0 0 0',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: kwhite),
                        ),
                      ),
                    ),
                    sizedboxwithheight(kheight! * .009),
                    CustomButton(
                      txt: 'Continue',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const OTPScreen(),
                          ),
                        );
                      },
                      foregroundColor: kwhite,
                      backgroundColor: kblack,
                      borderolor: kyellow,
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (context) => const OTPScreen(),
                    //       ),
                    //     );
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     side: const BorderSide(color: Colors.yellow),
                    //     // minimumSize: const Size(350, 55),
                    //     //  fixedSize: const Size(350, 55),
                    //     foregroundColor: Colors.black,
                    //     backgroundColor: kMainBlack,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(6),
                    //     ),
                    //   ),
                    //   child: const Text(
                    //     'Continue',
                    //     style: TextStyle(color: kwhite),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
