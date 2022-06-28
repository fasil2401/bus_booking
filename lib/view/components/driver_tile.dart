import 'package:bus_booking/view/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class DriverTile extends StatelessWidget {
  const DriverTile({
    Key? key,
  }) : super(key: key);

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
          'Rohit Sharma',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik',
          ),
        ),
        subtitle: Text(
          'Licn no: PJ5151961616',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Rubik',
          ),
        ),
        trailing: ElevatedButton(
            onPressed: () {},
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
