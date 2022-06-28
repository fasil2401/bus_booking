import 'dart:convert';

import 'package:dio/dio.dart';

import '../Constants/apiconstants.dart';
import '../model/login/login_model.dart';
import 'package:http/http.dart' as http;


class RemoteServicesLogin {
// Dio dio =  Dio();
  Future<Login?> getLogin() async {
    final response = await http.post(Uri.parse('${baseUrl}LoginApi'),
        body: {"username": 'admin_user', "password": '123admin789'});
    print(Uri.parse('${baseUrl}LoginApi'));

    if (response.statusCode == 200) {
      final String responseString = response.body;
      print(response.body);

      return loginFromJson(responseString);
    } else {
      return null;
    }
  }
}
