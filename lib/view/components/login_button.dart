
import 'package:bus_booking/services/create_driver.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controller/add_driver_controller.dart';
import '../../controller/login_controller.dart';
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

  
  final loginController = Get.put(LoginController());
  final addController = Get.put(AddController());
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
                // Get.toNamed('/home');  
                
                loginController.getLogin() ;          
              }
              else if(callback== 'add'){
                Get.toNamed('/add_driver');               
              }
              else if(callback== 'save'){
                // Get.toNamed('/add_driver'); 
                addDriverController.addDriver();              
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
