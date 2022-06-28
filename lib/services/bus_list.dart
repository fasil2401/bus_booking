import 'dart:convert';

import 'package:bus_booking/model/Bus%20List%20model/bus_list_model.dart';
import 'package:bus_booking/services/refresh_token.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../Constants/apiconstants.dart';
import '../controller/login_controller.dart';
import '../model/login/login_model.dart';
import 'package:http/http.dart' as http;
final loginController = Get.put(LoginController());

class RemoteServicesBusList {
  Future<BusList?> getBusList() async {
    final response = await http.get(Uri.parse('${baseUrl}BusListApi/${loginController.urlId.value}/'),
        headers: {"Authorization": 'Bearer ${loginController.access.value}',});
    print(Uri.parse('${baseUrl}BusListApi/${loginController.urlId.value}/'));

    if (response.statusCode == 200) {
      final String responseString = response.body;
      print(response.body);
// loginController.refresh();
      return busListFromJson(responseString);
      // return BusList.fromJson(json.decode(responseString));
    } else {
      
      return null;
    }
  }
}
