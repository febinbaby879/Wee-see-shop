import 'package:e_commerce_app/feature/location/view/screen/location_screen.dart';
import 'package:flutter/material.dart';

class LocationContainerr extends StatelessWidget {
  const LocationContainerr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const LocationScreen(),
          )),
          child: const Center(
            child: Text('Select location'),
          ),
        ),
      ),
    );
  }
}
