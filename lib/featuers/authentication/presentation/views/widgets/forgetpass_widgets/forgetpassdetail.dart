import 'package:clothesapp/featuers/authentication/presentation/views/widgets/botton.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Forgetpassdetail extends StatelessWidget {
  const Forgetpassdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        width: 342.w,
      height: 300.h,
        decoration: BoxDecoration(
            color: Color(0xFFFBD57D),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Forgot Your Password?",style: TextStyle(color: Color(0xFF101623),fontSize: 20.sp,fontWeight: FontWeight.w600),),
            ),
  Padding(
    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
    child: Text("Enter your phone number, we will send you                            confirmation code",style: TextStyle(color: Color(0xFF787878),fontSize: 12.sp,fontWeight: FontWeight.w400),),
  ),
      TextformfieldWidget(icon1:Icons.call_outlined , uppertext: "Phone Number", hinttext:"Enter your phone number" ),
      
          
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Botton(nextscreen: "verify_screen", text: "Reset Password"),
          ),
          
          ]
        ),
      ),
    );
  }
}
