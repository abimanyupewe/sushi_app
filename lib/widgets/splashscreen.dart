import 'package:flutter/material.dart';
import 'package:sushi_app/utils/constant/colors.dart';
import 'package:sushi_app/utils/constant/image_string.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColor.primary,
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset(ImageApp.logoApp),
          ),
        ),
      ),
    );
  }
}
