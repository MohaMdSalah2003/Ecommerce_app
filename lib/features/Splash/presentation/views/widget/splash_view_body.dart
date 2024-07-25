import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // Future.delayed(const Duration(seconds: 5), () {
    //   Get.to(() => const OnbordingView(), transition: Transition.rightToLeft);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Screenshot (773) 1.png'),
          const SizedBox(height: 10),
          SvgPicture.asset(
            'assets/images/STYLISH Find Your Slyle.svg',
          )
              .animate()
              .scale(
                duration: const Duration(seconds: 3),
              )
              .then()
              .shake(
                hz: 3,
              ),
        ],
      ),
    );
  }
}
