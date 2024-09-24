import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextformfieldWidget extends StatelessWidget {
  const TextformfieldWidget({super.key,required this.icon1, required this.uppertext, required this.hinttext});
 final  dynamic icon1;
   final String uppertext;
    final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            '$uppertext',
            style: TextStyle(
              color: Color(0xFF2F2F2F),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: TextFormField(
            cursorWidth: 323.w,
            cursorHeight:36 ,
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
                  icon1, // Icon at the start of the TextFormField
                    color: Color(0xFF969696), size: 10,
                  ),
                ),
                hintStyle: TextStyle(
                  color: Color(0xFF969696),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
                hintText: '$hinttext'),
          ),
        ),
      ],
    );
  }
}
