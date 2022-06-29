import 'package:bus_booking/view/components/form_head.dart';
import 'package:bus_booking/view/constants/colors.dart';
import 'package:bus_booking/view/constants/heights.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/bus_list_controller.dart';
import 'components/bus_tile.dart';
import 'components/home_tile.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
final buslistController = Get.put(BusListController());
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
            FormHead(title: '${buslistController.busList.length} Buses Found'),
            commonHeight1,
            Expanded(
              // height: 200.h,
              child: GetBuilder<BusListController>(
                builder: (cont) {
                  print(cont.busList.length);
                  return ListView.separated(
                      shrinkWrap: true,
                      physics:const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return  BusTile(busListElement: cont.busList[index],);
                      },
                      separatorBuilder: (context, index) => commonHeight1,
                      itemCount: cont.busList.length);
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
