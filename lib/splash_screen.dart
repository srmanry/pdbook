
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom/style.dart';
import 'first_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10),
      () {Get.to(() => const FristScreen()); },
        );

    return   Scaffold(
      // body:

      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            const Image(image: AssetImage('assets/images/splash.png',)),
            Text("পড় তোমার প্রভুর নামে",style: splashTextStyle,),
            Text("যিনি তোমাকে সৃষ্টি করেছেন",style: splashTextStyle,),
            const Text("সূরা আলাক : ১",style: TextStyle(fontSize: 25,color: Colors.red),),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     WavyAnimatedText('পড় তোমার প্রভুর নামে\nযিনি তোমাকে সৃষ্টি করেছেন\nসূরা আলাক : ১'), ],
            //
            // ),
          ],
        ),
      ),
    );
  }
}
