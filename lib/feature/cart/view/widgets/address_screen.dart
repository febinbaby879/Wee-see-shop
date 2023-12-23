import 'package:e_commerce_app/commen/elevated_buttun.dart';
import 'package:e_commerce_app/commen/text_field.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/top_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TopTittle(
                    text: '',
                    function: () => Navigator.of(context).pop(),
                  ),
                  const CupertnoField(placaHolder: 'Apartment / Flat'),
                  sizedboxwithheight(kheight! * 0.02),
                  const CupertnoField(placaHolder: 'Address'),
                  sizedboxwithheight(kheight! * 0.02),
                  const CupertnoField(placaHolder: 'Street'),
                  sizedboxwithheight(kheight! * 0.02),
                  const CupertnoField(placaHolder: 'Landmark'),
                  sizedboxwithheight(kheight! * 0.02),
                  locationText(),
                ],
              ),
              bottumAddButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottumAddButton(BuildContext context) {
    return CustomButton(
      borderolor: kyellow,
      txt: 'Save address',
      onPressed: () {
        Navigator.of(context).pop();
      },
      foregroundColor: kblack,
      backgroundColor: kyellow,
    );
  }

  Row locationText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_disabled_rounded,
          color: kyellow,
          size: 18,
        ),
        SizedBox(
          width: kwidth! * 0.01,
        ),
        const Text(
          'Use current location',
          style: TextStyle(color: kyellow),
        ),
      ],
    );
  }

  Widget textContainer(String text) {
    return CupertinoTextField(
      style: const TextStyle(
        color: kwhite,
      ),
      placeholder: text,
      placeholderStyle: const TextStyle(
        fontSize: 16,
        color: kgrey,
      ),
      decoration: BoxDecoration(
        color: klightGrey,
        borderRadius: BorderRadius.circular(8.0),
      ),
      cursorColor: kwhite,
    );
  }
}
