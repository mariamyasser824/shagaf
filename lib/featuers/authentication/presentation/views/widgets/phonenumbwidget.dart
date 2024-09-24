import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Phonenumbwidget extends StatelessWidget {
  const Phonenumbwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  color: Color(0xFF2F2F2F),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                cursorWidth: 323.w,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.black, // Border color when enabled
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.call_outlined, // Icon at the start of the TextFormField
                        color: Color(0xFF969696), size: 10,
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0xFF969696),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Enter your phone number'),
              ),
            ),
      ],
    )  ;
  }
}