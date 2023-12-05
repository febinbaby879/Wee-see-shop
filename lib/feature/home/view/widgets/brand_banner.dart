import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class BrandBanner extends StatelessWidget {
  const BrandBanner({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'asset/images/adidas.png',
      'asset/images/fendi.png',
      'asset/images/gucci.png',
      'asset/images/LV.png',
      'asset/images/nike.png',
      'asset/images/puma.png',
    ];
    List brandList = [
      'adidas',
      'Fendi',
      'GUCCI',
      'LV',
      'Nike',
      'Puma',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        height: 170.0,
        width: 400,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return BrandItemBuilder(
              imageList: imageList[index],
              brandName: brandList[index],
            );
          },
          separatorBuilder: (context, index) =>
              sizedboxwithWidth(kwidth! * .02),
        ),
      ),
    );
  }
}

class BrandItemBuilder extends StatelessWidget {
  const BrandItemBuilder({
    super.key,
    required this.imageList,
    required this.brandName,
  });
  final String brandName;
  final String imageList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 90,
                height: 130,
                color: kwhite,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  brandName,
                  style: const TextStyle(color: kgrey),
                ),
              ),
              Positioned(
                top: 60,
                right: 10,
                child: SizedBox(
                  width: 50,
                  height: 80,
                  child: Image.asset(
                    imageList,
                  ),
                ),
              ),
            ],
          ),
          sizedboxwithheight(kheight! * .01),
          const Text(
            '195 offers',
            style: TextStyle(fontSize: 12, color: kgrey),
          )
        ],
      ),
    );
  }
}
