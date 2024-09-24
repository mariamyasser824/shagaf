import 'package:clothesapp/featuers/authentication/presentation/views/widgets/forgetpass_widgets/forgetpass_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
        designSize:  Size(390, 844),
        builder: (context, child) {
          return  Scaffold(
            backgroundColor: Colors.white,
            body: ForgetpassBody(),
            
          );
        });;
  }
}