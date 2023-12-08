import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/address_screen.dart';
import 'package:flutter/material.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AddressScreen(),
          ),
        );
      },
      child: Container(
        color: klightGrey,
        width: double.infinity,
        height: 50,
        child: Row(
          children: [
            sizedboxwithWidth(kwidth! * .02),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: kyellow,
              ),
              child: const Icon(Icons.add),
            ),
            sizedboxwithWidth(kwidth! * .03),
            const Text('Add address'),
          ],
        ),
      ),
    );
  }
}
