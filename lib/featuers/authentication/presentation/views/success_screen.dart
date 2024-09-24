import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  Size(390, 844),
        builder: (context, child) {
          return  Scaffold(
            backgroundColor: Colors.white,
            body: null,
            
          );
        });
  }
}