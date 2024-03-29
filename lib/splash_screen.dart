import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Get.to(() => HomeScreen());
      },
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text('Splash Screen')],
      ),
    );
  }
}
