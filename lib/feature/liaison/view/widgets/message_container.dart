import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/feature/chating/view/screen/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedboxwithheight(kheight! * .02),
        SizedBox(
          height: 40,
          child: CupertinoTextField(
            placeholder: 'Search',
            placeholderStyle: const TextStyle(fontSize: 15, color: kwhite),
            prefix: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                CupertinoIcons.search,
                color: kwhite,
              ),
            ),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: kgrey,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 1,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                )),
                child: SizedBox(
                  height: 60,
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
                            child: CircleAvatar(
                              radius: 10,
                              child: Icon(
                                Icons.circle,
                                color: Colors.green,
                                size: 18,
                              ),
                            ),
                          ),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Today',
                            style: TextStyle(fontSize: 11),
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: kwhite,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                      sizedboxwithWidth(kwidth! * .02),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
