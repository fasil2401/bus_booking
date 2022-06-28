import 'package:bus_booking/view/constants/heights.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';



class HomeTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final String image;
  const HomeTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right:12),
        child: Container(
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Rubik',
                  ),
                ),
                SizedBox(
                  height: 0.1.h,
                
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Rubik',
                  ),
                ),
                commonHeight2,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class HomeTile2 extends StatelessWidget {

  final String title;
  final String subtitle;
  final String image;
  const HomeTile2({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:12),
        child: Container(
          decoration: BoxDecoration(
            color: commonBlack,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Rubik',
                  ),
                ),
                SizedBox(
                  height: 0.1.h,
                
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Rubik',
                  ),
                ),
                commonHeight1,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}