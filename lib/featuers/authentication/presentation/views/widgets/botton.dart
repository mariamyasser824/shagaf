import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Botton extends StatelessWidget {
  const Botton({super.key, required this.nextscreen, required this.text});
  final String nextscreen;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "$nextscreen");
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            width: 323.w,
          height: 37.h,
            color: Color(0xFF20473E),
            child: Center(
                child: Text(
              '$text',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
