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
        ],
      );
    });
  }
}
