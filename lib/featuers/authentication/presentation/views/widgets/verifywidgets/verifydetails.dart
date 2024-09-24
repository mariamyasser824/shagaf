import 'package:clothesapp/featuers/authentication/presentation/views/widgets/botton.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Verifydetails extends StatefulWidget {
  const Verifydetails({super.key});

  @override
  State<Verifydetails> createState() => _VerifydetailsState();
}

class _VerifydetailsState extends State<Verifydetails> {
  bool _onEditing = true;
  String? _code;
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
                child: Text(
                  "Enter Verification Code",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Text(
                  "  Enter code that we have sent to your number                                 012345678*** ",
                  maxLines: 2,
                  style: TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                width: 320,
                child: Center(
                  child: VerificationCode(
                    underlineUnfocusedColor: Color(0xFFF04C29),

                    keyboardType: TextInputType.number,
                    underlineColor: Color(
                        0xFFF04C29), // If this is null it will use primaryColor: Colors.red from Theme
                    length: 6,

                    // If this is null it will default to the ambient
                    // clearAll is NOT required, you can delete it
                    // takes any widget, so you can implement your design

                    margin: const EdgeInsets.all(5),
                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                     showDialog<void>(
                      
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
        
        
          content: SingleChildScrollView(
            
            child: ListBody(
              
              children: <Widget>[
              Center(child: Image.network("images/success.png")),
              Center(child: Text("Success",style: TextStyle(color: Color(0xFF101623),fontSize: 20.sp,fontWeight: FontWeight.w700),)),
  Center(child: Text("You have successfully reset your password.",style: TextStyle(color: Color(0xFFA1A8B0),fontSize: 16.sp,fontWeight: FontWeight.w400),)),
  
              ],
            ),
          ),
          actions: [
              Center(
    child: InkWell(onTap: (){
    },
    
    child:Container(

      decoration: BoxDecoration(
        color: Color(0xFF20473E),
        borderRadius: BorderRadius.circular(10)
      ),
      alignment: Alignment.center,
      width:187.w ,height: 51.h,
      child: Text("Done",style: TextStyle(color: Color(0xFFF3F3F3),fontSize: 17.sp,fontWeight: FontWeight.w400),)), 
    ),
  )
          ],
        
        );
      },
    );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 323.w,
                          height: 37.h,
                          color: Color(0xFF20473E),
                          child: Center(
                              child: Text(
                            'Reset Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ),
                      ),
                    ),
                  )),
            ]),
      ),
    );
  }
}
