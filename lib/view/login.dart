import 'package:bus_booking/view/components/welcome_text.dart';
import 'package:flutter/material.dart';

import 'package:bus_booking/view/components/login_button.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: redColor,

      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset('asset/images/login_bg.png', fit: BoxFit.cover),),
             Column(
            children: [
              SizedBox(height: 20.h,),
              WelcomeText(title: 'Welcome')
            ],
          ),

          LoginButton(title: 'Login', callback: 'login',)
        ],
      ),
    );
  }
}