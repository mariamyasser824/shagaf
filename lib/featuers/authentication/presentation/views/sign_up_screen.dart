import 'package:clothesapp/featuers/authentication/presentation/views/widgets/signupwidgets/signup_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(390, 900),
        builder: (context, child) {
          return Scaffold(
          
            backgroundColor: Colors.white,
            body: SignupBody(),
          );
        });
  }
}
