import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      // Get.to( () => const HomeView(),
      //     transition: Transition.fade,
      //     duration: kTransitionDuration
      // );
      GoRouter.of(context).push('/homeView');
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => HomeView()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Bookly'),
                WavyAnimatedText('Read Free Books '),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
        Lottie.asset('assets/images/data3.json'),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../../../../../core/utilies/assets.dart';
//
// class SplashBody extends StatelessWidget {
//   const SplashBody({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.stretch,
//    children: [
//      Image.asset(AssetData.logo),
//    ],
//     );
//   }
// }
