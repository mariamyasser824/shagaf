import 'package:clothesapp/featuers/authentication/presentation/views/forget_password_screen.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/loginscreen.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/sign_up_screen.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/success_screen.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/verify_screen.dart';
import 'package:flutter/material.dart';


import 'featuers/splashscreen/presentation/views/splash_screen.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:const SplashScreen() ,
        routes: {
        "authscreen": (context) => const log_in_screen(),
        "signupscreen":(context)=>const SignUpScreen(),
        "forgetpass_screen":(context)=>const ForgetPasswordScreen(),
        "verify_screen":(context)=>VerifyScreen(),
        "success_screen":(context)=>SuccessScreen(),
        },
      ),
    );
  }
}
