import 'package:bus_booking/view/components/form_head.dart';
import 'package:bus_booking/view/constants/colors.dart';
import 'package:bus_booking/view/constants/heights.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/home_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: commonBlack,
        automaticallyImplyLeading: false,
        title: SizedBox(
            width: 25.w, child: Image.asset('asset/images/onboard_logo.png')),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HomeTile(
                      title: 'Bus',
                      subtitle: 'Manage your Bus',
                      image: 'asset/images/bus.png',
                    ),
                    HomeTile2(
                      title: 'Driver',
                      subtitle: 'Manage your Driver',
                      image: 'asset/images/driver.png',
                    ),
                  ],
                ),
              ),
              commonHeight2,
              FormHead(title: '21 Buses Found'),
              commonHeight1,
              
            ],
          ),
        ),
      ),
    );
  }
}
