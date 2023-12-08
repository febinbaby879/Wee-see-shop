import 'package:e_commerce_app/feature/home/view/widgets/location_container_curving.dart';
import 'package:e_commerce_app/feature/location/view/screen/location_screen.dart';
import 'package:flutter/material.dart';

class LocationContainerr extends StatelessWidget {
  const LocationContainerr({
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
            builder: (context) => const LocationScreen(),
          )),
          child: CustomPaint(
            painter: OppositeCurvePainter(),
          ),
        ),
      ),
    );
  }
}

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const ValueKey('location_container_dismissible_key'),
      direction: DismissDirection.down,
      onDismissed: (_) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LocationScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.primaryDelta! > 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LocationScreen(),
                  ),
                );
              }
            },
            child: CustomPaint(
              painter: OppositeCurvePainter(),
            ),
          ),
        ),
      ),
    );
  }
}
