import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_app/pages/Onboarding.dart';
import 'package:sushi_app/pages/home/home.dart';
import 'package:sushi_app/widgets/splashscreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    // return FutureBuilder(
    //   future: Future.delayed(
    //     Duration(seconds: 3),
    //   ),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Splashscreen();
    //     } else {
    //       return GetMaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         home: Onboarding(),
    //       );
    //     }
    //   },
    // );
  }
}
