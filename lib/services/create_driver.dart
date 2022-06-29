import 'dart:convert';

import 'package:bus_booking/model/add_driver_model.dart';
import 'package:bus_booking/services/refresh_token.dart';
import 'package:bus_booking/view/add_driver.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../Constants/apiconstants.dart';
import '../controller/add_driver_controller.dart';
import '../controller/login_controller.dart';
import '../model/login/login_model.dart';
import 'package:http/http.dart' as http;

final loginController = Get.put(LoginController());
final addDriverController = Get.put(AddController());
class RemoteServicesAddDriver {
  Future<AddDriverModel?> addDriver() async {
    final response = await http.post(Uri.parse('${baseUrl}DriverApi/${loginController.urlId.value}/',),
        body: { "name": addDriverController.name, 'mobile': "3435436", 'license_no': addDriverController.licenseNo}, headers: {"Authorization": 'Bearer ${loginController.access.value}',});

        
    // print(Uri.parse('${baseUrl}LoginApi'));

    if (response.statusCode == 200) {
      final String responseString = response.body;
      print(response.body);
// loginController.refresh();
      return addDriverModelFromJson(responseString);
      
    } else {
      
      return null;
    }
  }
}