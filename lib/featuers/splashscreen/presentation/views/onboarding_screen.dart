import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Scaffold(
          backgroundColor: Color(0xFF146356)
      ,  body:OnboardingBody()
      
        ),
    );
    
  }}