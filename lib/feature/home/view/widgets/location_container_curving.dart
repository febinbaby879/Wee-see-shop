import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class OppositeCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = kwhite
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    // Draw a curved line with adjusted size and shadow
    final path = Path()
      ..moveTo(0, size.height * 0.1)
      ..quadraticBezierTo(
        size.width * 0.5,
        -size.height * 0.2,
        size.width,
        size.height * 0.1,
      );

    // Draw a small line at the bottom with adjusted width
    // Draw a small line at the bottom with adjusted width
    final bottomLine = Path()
      ..moveTo(size.width * 0.5 - 50, size.height) // Centered at the bottom
      ..lineTo(size.width * 0.5 + 50, size.height); // Width 100

    // Apply shadow to the bottom curved line
    canvas.drawShadow(path, Colors.black.withOpacity(0.2), 4.0, false);

    // Apply shadow to the bottom curved line
    canvas.drawShadow(path, kwhite.withOpacity(0.8), 6.0, false);

    // Draw the path and bottom line
    canvas.drawPath(path, paint);
    canvas.drawPath(bottomLine, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
