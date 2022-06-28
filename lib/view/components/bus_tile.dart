import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class BusTile extends StatelessWidget {
  const BusTile({
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
      ),
    );
  }
}
