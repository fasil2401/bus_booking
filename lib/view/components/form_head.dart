
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class FormHead extends StatelessWidget {

  final String title;
  const FormHead({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
      color: Colors.grey
    ),
    );
  }
}