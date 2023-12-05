import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  const Banners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'asset/images/banner1.png',
      'asset/images/banner2.png',
      'asset/images/banner3.png',
      'asset/images/banner4.png',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        height: 400.0,
        width: 400,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 400,
              height: 400,
              child: Image.asset(imageList[index]),
            );
          },
        ),
      ),
    );
  }
}
