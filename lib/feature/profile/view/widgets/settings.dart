import 'package:e_commerce_app/commen/text_field.dart';
import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:e_commerce_app/feature/cart/view/widgets/top_tile.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScope = FocusScope.of(context);
        if (!focusScope.hasPrimaryFocus) {
          focusScope.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopTittle(
                  text: 'Settings',
                  function: () => Navigator.of(context).pop(),
                ),
                const Text('Mobile number'),
                sizedboxwithheight(kheight! * .01),
                CupertnoField(
                  hieght: 60,
                  placaHolder: 'Mobile number',
                  suffix: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change',
                      style: TextStyle(color: kgrey),
                    ),
                  ),
                ),
                sizedboxwithheight(kheight! * .03),
                const Text('Mail address'),
                sizedboxwithheight(kheight! * .01),
                CupertnoField(
                  hieght: 100,
                  placaHolder: 'Mail address',
                  suffix: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change',
                      style: TextStyle(color: kgrey),
                    ),
                  ),
                ),
                sizedboxwithheight(kheight! * .03),
                const Text('Address'),
                sizedboxwithheight(kheight! * .01),
                CupertnoField(
                  hieght: 100,
                  placaHolder: 'Address',
                  suffix: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change',
                      style: TextStyle(color: kgrey),
                    ),
                  ),
                ),
                sizedboxwithheight(kheight! * .03),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: AppTheme.kred),
                    ),
                    child: const Center(
                      child: Text(
                        'Delete account',
                        style: TextStyle(
                          color: AppTheme.kred,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
