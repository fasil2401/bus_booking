import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../Constants/apiconstants.dart';
import 'package:http/http.dart' as http;

import '../controller/login_controller.dart';
import '../model/refresh/refresh_model.dart';

final loginController = Get.put(LoginController());
class RemoteServicesRefresh {
  Future<Refresh?> getLogin() async {
    final response = await http.post(Uri.parse('${baseUrl}api/token/refresh/'),
        body: {"refresh": loginController.refreshToken.value});
    print(Uri.parse('${baseUrl}LoginApi'));
print(loginController.refreshToken.value);
    if (response.statusCode == 200) {
      final String responseString = response.body;
      print(response.body);

      return refreshFromJson(responseString);
    } else {
      return null;
    }
  }
}
