import 'package:bus_booking/view/components/driver_tile.dart';
import 'package:bus_booking/view/constants/colors.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/bus_tile.dart';
import 'components/form_head.dart';
import 'components/login_button.dart';
import 'constants/heights.dart';
import 'home.dart';

class DriverList extends StatelessWidget {
  const DriverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: commonBlack,
        title: Text(
          'Driver List',
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
              children: [
                commonHeight2,
                const FormHead(title: '21 Drivers Found'),
                commonHeight1,
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return const DriverTile();
                      },
                      separatorBuilder: (context, index) => commonHeight1,
                      itemCount: 20),
                ),
              ],
            ),
          ),
          LoginButton(
            title: 'Add Driver',
            callback: 'add',
          )
        ],
      ),
    );
  }
}
