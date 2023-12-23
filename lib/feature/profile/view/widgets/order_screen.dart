import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/top_tile.dart';
import 'package:e_commerce_app/feature/profile/view/widgets/order_status_container.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopTittle(
                text: 'Orders',
                function: () => Navigator.of(context).pop(),
              ),
              const OrderStatusContainer(
                status: 'Orderd',
                type: 'Cancel',
              ),
              sizedboxwithheight(kheight! * .01),
              const OrderStatusContainer(
                status: 'Deliverd',
                type: 'Exchange',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
