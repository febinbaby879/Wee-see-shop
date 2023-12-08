import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class TopTittle extends StatelessWidget {
  const TopTittle({super.key, required this.text, this.function});

  final String text;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 30,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        child: Row(
          children: [
            InkWell(
              onTap: function,
              child: function == null
                  ? const SizedBox()
                  : Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        color: kyellow,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: const TextStyle(
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
