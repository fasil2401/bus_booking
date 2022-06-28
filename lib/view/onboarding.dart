import 'package:bus_booking/view/components/login_button.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: redColor,

      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: 45.w,
              child: Image.asset('asset/images/onboard_logo.png')),
          ),

          LoginButton(title: 'Get Started', callback: 'onboard', buttonColor: Colors.white,textColor: redColor,)
        ],
      ),
    );
  }
}