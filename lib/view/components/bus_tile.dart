import 'package:bus_booking/model/Bus%20List%20model/bus_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../bus_1x3.dart';
import '../bus_2x2.dart';


class BusTile extends StatelessWidget {
  const BusTile({
    Key? key, required this.busListElement
  }) : super(key: key);

final BusListElement busListElement;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
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
          'KSRTC',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik',
          ),
        ),
        subtitle: Text(
          busListElement.name,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik',
          ),
        ),
        trailing: ElevatedButton(
            onPressed: () {
              if(busListElement.type == '1X3'){
                // Get.toNamed('/bus1x3');
                Get.to(()=>Bus1x3Screen( title: busListElement.name, id: busListElement.driver ?? 0, seatCount: (int.parse( busListElement.seatCount) / 4 ).round(),));

              }
              else{
                // Get.toNamed('/bus2x2');
                Get.to(()=>Bus2x2Screen( title: busListElement.name, id: busListElement.driver ?? 0, seatCount: (int.parse( busListElement.seatCount) / 4 ).round(),));
              }
            },
            child:const Text(
              'Manage',
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w400),
            )),
      ),
    );
  }
}
