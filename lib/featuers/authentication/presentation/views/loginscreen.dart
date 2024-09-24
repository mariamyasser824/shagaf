import 'package:clothesapp/featuers/authentication/presentation/views/widgets/loginwidgets/loginbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class log_in_screen extends StatelessWidget {
  const log_in_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  Size(390, 844),
        builder: (context, child) {
          return  Scaffold(
            
            backgroundColor: Colors.white,
            body: Loginbody(),
            
          );
        });
  }
}
