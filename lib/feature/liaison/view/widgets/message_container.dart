import 'package:e_commerce_app/core/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 37,
          child: CupertinoTextField(
            placeholder: 'Search',
            placeholderStyle: const TextStyle(fontSize: 10, color: kwhite),
            prefix: const Icon(
              CupertinoIcons.search,
              color: kwhite,
            ),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: kgrey,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => SizedBox(
              height: 50,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'asset/images/Rectangle 2656.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: -6,
                        right: -6,
                        child: Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  sizedboxwithWidth(kwidth! * .02),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Andrew Jacab',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Typing ....',
                        style: TextStyle(fontSize: 12, color: kgrey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(fontSize: 11),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: kwhite,
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  sizedboxwithWidth(kwidth! * .02),
                ],
              ),
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 21,
          ),
        )
      ],
    );
  }
}
