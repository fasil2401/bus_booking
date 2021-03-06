import 'dart:convert';

import 'package:bus_booking/services/refresh_token.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../Constants/apiconstants.dart';
import '../controller/login_controller.dart';
import '../model/login/login_model.dart';
import 'package:http/http.dart' as http;

final loginController = Get.put(LoginController());
class RemoteServicesLogin {
  Future<Login?> getLogin() async {
    final response = await http.post(Uri.parse('${baseUrl}LoginApi'),
        body: {"username": 'admin_user', "password": '123admin789'});
    print(Uri.parse('${baseUrl}LoginApi'));

    if (response.statusCode == 200) {
      final String responseString = response.body;
      print(response.body);
// loginController.refresh();
      return loginFromJson(responseString);
      
    } else {
      
      return null;
    }
  }
}
