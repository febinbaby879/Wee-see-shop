import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/liaison/controller/page_navitator_controller.dart';
import 'package:e_commerce_app/feature/liaison/data/enum.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/custum_circle_avatar.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/message_container.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/product_items.dart';
import 'package:e_commerce_app/feature/liaison/view/widgets/vedio_call.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LiasonScreen extends StatelessWidget {
  const LiasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SelectedContainerProvider(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 6,
                ),
                child: Row(
                  children: [
                    const CustomCircleAvatar(
                      icon: Icons.message,
                      containerType: ContainerType.message,
                    ),
                    sizedboxwithWidth(kwidth! * .03),
                    const CustomCircleAvatar(
                      icon: Icons.video_chat_outlined,
                      containerType: ContainerType.videoCall,
                    ),
                    sizedboxwithWidth(kwidth! * .03),
                    const CustomCircleAvatar(
                      icon: Icons.circle_sharp,
                      containerType: ContainerType.productList,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Consumer<SelectedContainerProvider>(
                    builder: (context, selectedProviderInstance, _) {
                      switch (selectedProviderInstance.selectedContainer) {
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
