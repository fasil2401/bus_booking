// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    Login({
       required this.status,
       required this.name,
       required this.refresh,
       required this.access,
       required this.message,
       required this.urlId,
    });

    bool status;
    String name;
    String refresh;
    String access;
    String message;
    String urlId;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        status: json["status"],
        name: json["name"],
        refresh: json["refresh"],
        access: json["access"],
        message: json["message"],
        urlId: json["url_id"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "name": name,
        "refresh": refresh,
        "access": access,
        "message": message,
        "url_id": urlId,
    };
}
