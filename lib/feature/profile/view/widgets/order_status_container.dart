import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/material.dart';

class OrderStatusContainer extends StatelessWidget {
  const OrderStatusContainer({
    super.key,
    required this.status,
    required this.type,
  });
  final String status;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: klightGrey,
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: kyellow,
                child: Icon(
                  Icons.contact_mail,
                ),
              ),
              sizedboxwithWidth(kwidth! * .04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(status),
                  const Text('On Sun, 10 Dec 2023'),
                ],
              )
            ],
          ),
          sizedboxwithheight(kheight! * .02),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  'asset/images/person.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              sizedboxwithWidth(kwidth! * .03),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Air jorden Dry Fit'),
                  Text('Nike Showroom, Bangalore'),
                  Text('Size : 32'),
                ],
              )
            ],
          ),
          sizedboxwithheight(kheight! * .02),
          Row(
            children: [
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: kyellow,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(type, style: const TextStyle(color: kblack)),
                ),
              ),
              sizedboxwithWidth(kwidth! * .06),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: kyellow,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                  child: Text(
                    'Edit',
                    style: TextStyle(color: kblack),
                  ),
                ),
              ),
            ],
          ),
          sizedboxwithheight(kheight! * .02),
          Container(
            height: 30,
            color: kblack,
            child: const Center(child: Text('Need Help With This Product ?')),
          )
        ],
      ),
    );
  }
}
