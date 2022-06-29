import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/add_driver_controller.dart';
import 'components/form_head.dart';
import 'components/login_button.dart';
import 'constants/colors.dart';
import 'constants/heights.dart';
import 'constants/paddings.dart';


class AddDriver extends StatelessWidget {
   AddDriver({Key? key}) : super(key: key);

  final addController = Get.put(AddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        backgroundColor: commonBlack,
        
        title: Text(
          'Add Driver',
          style: TextStyle(fontFamily: 'Rubik'),
        ),
        centerTitle: true,
      ),

       body: Stack(
        children: [
          Padding(
            padding: commonHorizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(
                  height: 5.h,
                ),
                CupertinoTextField(
                  onChanged: (value) {
                    addController.validateName(value);
                  
                  },
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: TextStyle(fontSize: 16.sp),
                  placeholder: 'Enter Name',
                  placeholderStyle: TextStyle(
                      color: CupertinoColors.placeholderText,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w200,
                      fontSize: 14.sp),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                ),
                commonHeight2,
                CupertinoTextField(
                  onChanged: (value) {
                    addController.validateLicense(value);
                    print(value);
                  
                  },
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  
                  style: TextStyle(fontSize: 16.sp),
                  placeholder: 'Enter License Numeber',
                  placeholderStyle: TextStyle(
                      color: CupertinoColors.placeholderText,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w200,
                      fontSize: 14.sp),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                ),
              ]
            ),
          ),
          LoginButton(
            title: 'Save',
            callback: 'save',
          )
        ],
      ),
    );
  }
}