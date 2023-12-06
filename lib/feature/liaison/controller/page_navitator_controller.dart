import 'package:e_commerce_app/feature/liaison/data/enum.dart';
import 'package:flutter/material.dart';

class SelectedContainerProvider with ChangeNotifier {
  ContainerType _selectedContainer = ContainerType.message;

  ContainerType get selectedContainer => _selectedContainer;

  void setSelectedContainer(IconData icon) {
    if (icon == Icons.message) {
      _selectedContainer = ContainerType.message;
    } else if (icon == Icons.video_chat_outlined) {
      _selectedContainer = ContainerType.videoCall;
    } else if (icon == Icons.circle_sharp) {
      _selectedContainer = ContainerType.productList;
    }

    notifyListeners();
  }
}
