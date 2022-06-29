import 'package:bus_booking/model/driver%20list%20model/driver_list_model.dart';
import 'package:bus_booking/services/delete_driver.dart';
import 'package:bus_booking/view/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controller/delete_driver_ontroller.dart';


class DriverTile extends StatelessWidget {
   DriverTile({
    Key? key, required this.driverlistElement
  }) : super(key: key);

final DriverListElement driverlistElement;
final deleteCOntroller = Get.put(DeleteController());
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldColor,
            
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/images/profile.jpeg'),
          ),
        ),
        title: Text(
          driverlistElement.name ?? '',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik',
          ),
        ),
        subtitle: Text(
          'Licn no: ${driverlistElement.licenseNo ?? ''}',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Rubik',
          ),
        ),
        trailing: ElevatedButton(
            onPressed: () {
              deleteCOntroller.getId( driverlistElement.id);
            },
            child: Text(
              'Delete',
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w400),
            )),
      ),
    );
  }
}
