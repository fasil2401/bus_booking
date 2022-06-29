import 'package:bus_booking/view/components/driver_tile.dart';
import 'package:bus_booking/view/constants/colors.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/driver_list_controller.dart';
import 'components/bus_tile.dart';
import 'components/form_head.dart';
import 'components/login_button.dart';
import 'constants/heights.dart';
import 'home.dart';

class DriverList extends StatelessWidget {
  DriverList({Key? key}) : super(key: key);


  final driverListController = Get.put(DriverListController());

  @override
  Widget build(BuildContext context) {
    driverListController.getDriverList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: commonBlack,
        title: Text(
          'Driver List',
          style: TextStyle(fontFamily: 'Rubik'),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(icon:Icon(Icons.arrow_back, color: Colors.white,) ,onPressed: (){
          Get.toNamed('/home');
        }),
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
                 FormHead(title: '${driverListController.driverList.length} Drivers Found'),
                commonHeight1,
                Expanded(
                  child: GetBuilder<DriverListController>(
                    builder: (cont) {
                      return ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return  DriverTile( driverlistElement: cont.driverList[index],);
                          },
                          separatorBuilder: (context, index) => commonHeight1,
                          itemCount: cont.driverList.length);
                    }
                  ),
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
