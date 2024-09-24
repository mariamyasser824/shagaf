import 'package:clothesapp/featuers/authentication/presentation/views/widgets/botton.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/textformfield_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Signupdetails extends StatelessWidget {
   Signupdetails({super.key});
  
  @override
  Widget build(BuildContext context) {
     MediaQueryData mediaQueryData = MediaQuery.of(context);

double screenHeight = mediaQueryData.size.height;
      return Padding(
      padding: const EdgeInsets.all(24),
      child: Expanded(
        child: Container(
          width: 342.w,
            
        height: 480.h,
          decoration: BoxDecoration(
              color: Color(0xFFFBD57D),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextformfieldWidget(icon1:Icons.call_outlined , uppertext: "Phone Number", hinttext:"Enter your phone number" ),
            TextformfieldWidget(icon1: Icons.person_outline_rounded, uppertext:"User Name" , hinttext: "Enter your name"),
        TextformfieldWidget(icon1:Icons.lock_outline_rounded , uppertext: "Password", hinttext: "Enter your password"),
              TextformfieldWidget(icon1:Icons.lock_outline_rounded , uppertext: "Confirm Password", hinttext: " Confirm password"),
            
            Botton(nextscreen: "verify_screen", text: "SIGN UP"),
              Container(
                alignment: Alignment.bottomCenter,
                width: 323,
        
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "authscreen");
                      },
                      child: Text(
                        ' Log In',
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
      ),
    );
  }
}
