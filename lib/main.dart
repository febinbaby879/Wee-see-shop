import 'package:e_commerce_app/core/const.dart';
import 'package:e_commerce_app/core/theme.dart';
import 'package:e_commerce_app/feature/authentication/view/screens/number_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    kheight = MediaQuery.of(context).size.height;
    kwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const NumberScreen(),
    );
  }
}
