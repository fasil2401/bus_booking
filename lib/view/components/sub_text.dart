import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class subText extends StatelessWidget {
  subText({Key? key, required this.text, this.color, this.fontWeight})
      : super(key: key);

  final String text;
  Color? color ;
  FontWeight? fontWeight = FontWeight.w400;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: fontWeight,
        fontFamily: 'Rubik',
        color: color,
      ),
    );
  }
}