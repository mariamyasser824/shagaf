import 'package:clothesapp/featuers/authentication/presentation/views/widgets/imagewidget.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/loginwidgets/logindetails.dart';
import 'package:flutter/material.dart';

class Loginbody extends StatelessWidget {
  const Loginbody({super.key});

  @override
  Widget build(BuildContext context) {
    return
     Column(
    
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Center(child: Imagewidget()),
        Center(child: Logindetails()),
      ],
    );
  }
}
