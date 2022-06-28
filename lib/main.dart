import 'package:bus_booking/view/add_driver.dart';
import 'package:bus_booking/view/bus_1x3.dart';
import 'package:bus_booking/view/bus_2x2.dart';
import 'package:bus_booking/view/driver_list.dart';
import 'package:bus_booking/view/home.dart';
import 'package:bus_booking/view/login.dart';
import 'package:bus_booking/view/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Bus Booking',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),

        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: ()=> const OnboardingScreen(),
          transition: Transition.cupertino
          ),
          GetPage(name: '/login', page: ()=> const LoginScreen(),
          transition: Transition.cupertino
          ),
          GetPage(name: '/home', page: ()=> const HomePage(),
          transition: Transition.cupertino
          ),
          GetPage(name: '/driver_list', page: ()=> const DriverList(),
          transition: Transition.cupertino
          ),
          GetPage(name: '/add_driver', page: ()=> const AddDriver(),
          transition: Transition.cupertino
          ),
          GetPage(name: '/bus2x2', page: ()=> const Bus2x2Screen(),
          transition: Transition.cupertino
          ),
          GetPage(name: '/bus1x3', page: ()=> const Bus1x3Screen(),
          transition: Transition.cupertino
          ),
        ],
      );
    });
  }
}
