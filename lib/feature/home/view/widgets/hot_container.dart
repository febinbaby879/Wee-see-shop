import 'package:e_commerce_app/feature/home/view/widgets/hot_container_screen.dart';
import 'package:e_commerce_app/feature/home/view/widgets/location_container_curving.dart';
import 'package:flutter/material.dart';

class HotContainer extends StatelessWidget {
  const HotContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
      child: SizedBox(
        width: double.infinity,
        height: 20,
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const HotContainerScreen(),
          )),
          child: CustomPaint(
            painter: OppositeCurvePainter(),
          ),
        ),
      ),
    );
  }
}
