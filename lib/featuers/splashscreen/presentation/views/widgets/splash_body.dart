import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../onboarding_screen.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> a;
  late Animation<Offset> b;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 840.h,
      decoration: const BoxDecoration(
        
        image: DecorationImage(image:  NetworkImage("images/Screenshot (103).png"),fit: BoxFit.fill
        )
        )
      
      )
    ;
  }
}
