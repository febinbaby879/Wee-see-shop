import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class CustumTop extends StatelessWidget {
  const CustumTop({super.key, this.giff = ''});

  final String giff;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          sizedboxwithWidth(kwidth! * 0.6),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: kyellow,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.alarm,
              color: kyellow,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              color: kyellow,
            ),
          ),
        ],
      ),
    );
  }
}
