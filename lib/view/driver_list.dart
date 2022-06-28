import 'package:bus_booking/view/constants/colors.dart';
import 'package:flutter/material.dart';

class DriverList extends StatelessWidget {
  const DriverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: commonBlack,
        title: Text('Driver List', style: TextStyle(fontFamily: 'Rubik'),),
        centerTitle: true ,
      ),
    );
  }
}