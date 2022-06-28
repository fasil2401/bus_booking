
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';


class LoginButton extends StatelessWidget {
  final String title;
  final String callback;
  final Color buttonColor;
  final Color textColor;

  LoginButton(
      {Key? key,
      required this.title,
      required this.callback,
       this.buttonColor = redColor,
       this.textColor = Colors.white

     })
      : super(key: key);

  // final registerApiControl = Get.put(RegisterOtpController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 6.h,
          width: MediaQuery.of(context).size.width * 0.85,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // <-- Radius
              ),
            ),
            onPressed: () {
              if(callback== 'onboard'){
                Get.toNamed('/login');               
              }
              else if(callback== 'login'){
                Get.toNamed('/home');               
              }
              else if(callback== 'add'){
                Get.toNamed('/add_driver');               
              }
            
            },
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 16.sp,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
