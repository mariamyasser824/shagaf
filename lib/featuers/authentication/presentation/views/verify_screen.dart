import 'package:clothesapp/featuers/authentication/presentation/views/widgets/verifywidgets/verifybody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  Size(390, 844),
        builder: (context, child) {
          return  Scaffold(
            backgroundColor: Colors.white,
            body: Verifybody(),
            
          );
        });
  }
}