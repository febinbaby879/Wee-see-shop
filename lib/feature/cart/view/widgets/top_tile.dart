import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class TopTittle extends StatelessWidget {
  const TopTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: SizedBox(
        child: Row(
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                width: 40,
                height: 30,
                color: kyellow,
                child: const Icon(Icons.arrow_back),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w800,
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
