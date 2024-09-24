import 'package:clothesapp/featuers/authentication/presentation/views/widgets/forgetpass_widgets/forgetpassdetail.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/imagewidget.dart';
import 'package:flutter/material.dart';
class ForgetpassBody extends StatelessWidget {
  const ForgetpassBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
    
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
        Center(child:Forgetpassdetail() ),
      ],
    ) ;
  }
}