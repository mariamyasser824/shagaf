import 'package:clothesapp/featuers/authentication/presentation/views/widgets/botton.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/textformfield_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logindetails extends StatelessWidget {
  const Logindetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        width: 342.w,
      height: 350.h,
        decoration: BoxDecoration(
            color: Color(0xFFFBD57D),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      TextformfieldWidget(icon1:Icons.call_outlined , uppertext: "Phone Number", hinttext:"Enter your phone number" ),
      TextformfieldWidget(icon1:Icons.lock_outline_rounded , uppertext: "Password", hinttext: "Enter your password")
          ,  Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "forgetpass_screen");
                    },
                    child: Text('Forget Password?',
                        style: TextStyle(
                          color: Color(0xFF2F2F2F),
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ))),
              ),
            ),
          Botton(nextscreen: "verify_screen", text: "LOG IN"),
            Container(
              alignment: Alignment.bottomCenter,
              width: 323,
              //: 166.w,height: 13.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "signupscreen");
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFFF04C29),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
