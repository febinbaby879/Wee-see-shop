import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/cupertino.dart';

class CupertnoField extends StatelessWidget {
  const CupertnoField({
    super.key,
    required this.placaHolder,
    this.suffix,
    this.controlller,
    this.hieght,
  });

  final String placaHolder;
  final Widget? suffix;
  final TextEditingController? controlller;
  final double? hieght;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght,
      child: CupertinoTextField(
        suffix: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: suffix,
        ),
        style: const TextStyle(
          color: kwhite,
        ),
        placeholder: placaHolder,
        placeholderStyle: const TextStyle(
          fontSize: 16,
          color: kgrey,
        ),
        decoration: BoxDecoration(
          color: klightGrey,
          borderRadius: BorderRadius.circular(4.0),
        ),
        cursorColor: kwhite,
      ),
    );
  }
}
