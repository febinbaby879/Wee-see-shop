import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/liaison/controller/page_navitator_controller.dart';
import 'package:e_commerce_app/feature/liaison/data/enum.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/message_container.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/product_items.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/vedio_call.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LiasonScreenn extends StatelessWidget {
  const LiasonScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.message,
                    color: kyellow,
                  ),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.video_chat_outlined,
                    color: kyellow,
                  ),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.circle_sharp,
                    color: kyellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LiasonScreen extends StatelessWidget {
  const LiasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SelectedContainerProvider(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    CustomCircleAvatar(icon: Icons.message),
                    CustomCircleAvatar(icon: Icons.video_chat_outlined),
                    CustomCircleAvatar(icon: Icons.circle_sharp),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Consumer<SelectedContainerProvider>(
                    builder: (context, provider, _) {
                      switch (provider.selectedContainer) {
                        case ContainerType.message:
                          return const MessageContainer();
                        case ContainerType.videoCall:
                          return const VedioCallBox();
                        case ContainerType.productList:
                          return const ProductList();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  final IconData icon;

  const CustomCircleAvatar({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<SelectedContainerProvider>(context, listen: false)
            .setSelectedContainer(icon);
      },
      child: CircleAvatar(
        child: Icon(
          icon,
          color: Colors.yellow,
        ),
      ),
    );
  }
}




// Your MessageContainer, VedioCallBox, and ProductList classes remain the same.
