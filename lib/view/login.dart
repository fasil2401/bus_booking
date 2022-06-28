import 'package:bus_booking/view/components/sub_text.dart';
import 'package:bus_booking/view/components/welcome_text.dart';
import 'package:bus_booking/view/constants/heights.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bus_booking/view/components/login_button.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/login_controller.dart';
import 'constants/colors.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);


  

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
            child: Image.asset('asset/images/login_bg.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: commonHorizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                WelcomeText(title: 'Welcome'),
                commonHeight1,
                subText(
                  text: 'Manage your Bus and Drivers',
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CupertinoTextField(
                  onChanged: (value) {},
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: TextStyle(fontSize: 16.sp),
                  placeholder: 'Enter Username',
                  placeholderStyle: TextStyle(
                      color: CupertinoColors.placeholderText,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w200,
                      fontSize: 14.sp),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                ),
                commonHeight2,
                CupertinoTextField(
                  onChanged: (value) {},
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: TextStyle(fontSize: 16.sp),
                  placeholder: 'Enter Password',
                  placeholderStyle: TextStyle(
                      color: CupertinoColors.placeholderText,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w200,
                      fontSize: 14.sp),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                ),
              ],
            ),
          ),
          LoginButton(
            title: 'Login',
            callback: 'login',
          )
        ],
      ),
    );
  }
}
