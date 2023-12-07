import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/liaison/controller/page_navitator_controller.dart';
import 'package:e_commerce_app/feature/liaison/data/enum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCircleAvatar extends StatelessWidget {
  final IconData icon;
  final ContainerType containerType;

  const CustomCircleAvatar({
    super.key,
    required this.icon,
    required this.containerType,
  });

  @override
  Widget build(BuildContext context) {
    final selectedProvider = Provider.of<SelectedContainerProvider>(context);

    return GestureDetector(
      onTap: () {
        selectedProvider.setSelectedContainer(icon);
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: selectedProvider.selectedContainer == containerType
            ? kyellow
            : klightyellow,
        child: Icon(
          icon,
          color: selectedProvider.selectedContainer == containerType
              ? kblack
              : kgrey,
          size: 33,
        ),
      ),
    );
  }
}
