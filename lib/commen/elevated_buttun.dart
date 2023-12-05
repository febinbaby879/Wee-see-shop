import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final String txt;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.txt,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
            backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          child: Text(
            txt,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
