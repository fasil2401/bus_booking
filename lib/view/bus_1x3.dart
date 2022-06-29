import 'package:bus_booking/view/constants/heights.dart';
import 'package:bus_booking/view/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/driver_list_controller.dart';
import '../model/driver list model/driver_list_model.dart';
import 'constants/colors.dart';

class Bus1x3Screen extends StatelessWidget {
   Bus1x3Screen({Key? key,this.title= 'Update Driver',  this.id,  this. seatCount}) : super(key: key);
final driverListController = Get.put(DriverListController());

final String title ;
final int? id;
final int? seatCount;
 DriverListElement driverListElement = DriverListElement(id: 0, name:"", licenseNo: '');
  @override
  Widget build(BuildContext context) {
driverListController.getDriverList();
       if (id != 0) {
      driverListController.driverList.value.forEach((element) {
      if (element.id == id) {
        driverListElement = element;
        // driverListController.update();
      }  
    });
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: commonBlack,
        title: Text(
          'KSRTC Swift Scania P-​series',
          style: TextStyle(fontFamily: 'Rubik'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: commonHorizontalPadding,
        child: SingleChildScrollView(
          child: Column(children: [
            commonHeight2,
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: commonBlack, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: commonHorizontalPadding,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            driverListElement.name!,
                            style: TextStyle(
                              fontSize: 26.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Rubik',
                            ),
                          ),
                          // SizedBox(
                          //   height: 0.1.h,
                          // ),
                          commonHeight1,
                          Text(
                            'License no: ${driverListElement.licenseNo!}',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Image.asset('asset/images/driver.png'),
                    ),
                  ],
                ),
              ),
            ),
            commonHeight2,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                // height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 0.4),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          child: Image.asset('asset/images/Seat_black.png'),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 3.h),
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      
                                      SizedBox(
                                        child: Image.asset('asset/images/Seat_red.png'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        child: Image.asset('asset/images/Seat_red.png'),
                                      ),
                                      SizedBox(width: 15,),
                                      SizedBox(
                                        child: Image.asset('asset/images/Seat_red.png'),
                                      ),
                                      SizedBox(width: 15,),
                                      SizedBox(
                                        child: Image.asset('asset/images/Seat_red.png'),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) => commonHeight3,
                            itemCount: seatCount!),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
