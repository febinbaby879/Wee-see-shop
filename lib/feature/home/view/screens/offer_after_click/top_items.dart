import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class TopItem extends StatelessWidget {
  const TopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: kyellow,
            ),
          ),
          const Spacer(),
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
