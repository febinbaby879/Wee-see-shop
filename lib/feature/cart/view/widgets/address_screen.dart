import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/top_tile.dart';
import 'package:flutter/material.dart';

class AddressSCreen extends StatelessWidget {
  const AddressSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.94,
              child: Column(
                children: [
                  const TopTittle(),
                  textContainer('Appartment'),
                  sizedboxwithheight(kheight! * .02),
                  textContainer('Address'),
                  sizedboxwithheight(kheight! * .02),
                  textContainer('Street'),
                  sizedboxwithheight(kheight! * .02),
                  textContainer('Landmark'),
                  sizedboxwithheight(kheight! * .03),
                  locationText(),
                ],
              ),
            ),
            Expanded(
              child: bottumAddButton(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottumAddButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(kyellow),
          ),
          child: const Text('SAVE ADDRESS'),
        ),
      ),
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
        sizedboxwithWidth(
          kwidth! * .01,
        ),
        const Text(
          'Use current location',
          style: TextStyle(color: kyellow),
        ),
      ],
    );
  }

  Widget textContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: klightGrey,
      ),
      width: double.infinity,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Text(
          text,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
