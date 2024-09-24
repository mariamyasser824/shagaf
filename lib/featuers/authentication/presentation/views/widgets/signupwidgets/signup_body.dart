import 'package:clothesapp/featuers/authentication/presentation/views/widgets/imagewidget.dart';
import 'package:clothesapp/featuers/authentication/presentation/views/widgets/signupwidgets/signupdetails.dart';
import 'package:flutter/material.dart';
class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                    )),
        ),
        Imagewidget(),
        Expanded(child: Signupdetails())

      ],
    );
  }
}