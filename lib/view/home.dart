import 'package:bus_booking/view/components/form_head.dart';
import 'package:bus_booking/view/constants/colors.dart';
import 'package:bus_booking/view/constants/heights.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
           const FormHead(title: '21 Buses Found'),
            commonHeight1,
            Expanded(
              // height: 200.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics:const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const BusTile();
                  },
                  separatorBuilder: (context, index) => commonHeight1,
                  itemCount: 20),
            )
          ],
        ),
      ),
    );
  }
}

class BusTile extends StatelessWidget {
  const BusTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 20.w,
        height: 20.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage('asset/images/bus.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
      title: Text(
        'KSRC',
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          fontFamily: 'Rubik',
        ),
      ),
      subtitle: Text(
        'Swift SCania P-series',
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          fontFamily: 'Rubik',
        ),
      ),
      trailing: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Manage',
            style: TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
