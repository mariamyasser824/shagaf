import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Scaffold(
          backgroundColor: Color(0xFF146356)
      ,  body:SplashBody()
      
        ),
    );
    
  }}
/*
Center(
          child: Transform.rotate(
            angle: -math.pi / 4, // Rotate 45 degrees
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('FlutterCampus.com'),
              ),
            ),
          ),
        ),
* */