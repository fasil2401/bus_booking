// To parse this JSON data, do
//
//     final addDriverModel = addDriverModelFromJson(jsonString);

import 'dart:convert';

AddDriverModel addDriverModelFromJson(String str) => AddDriverModel.fromJson(json.decode(str));

String addDriverModelToJson(AddDriverModel data) => json.encode(data.toJson());

class AddDriverModel {
    AddDriverModel({
       required this.status,
       required this.message,
    });

    bool status;
    String message;

    factory AddDriverModel.fromJson(Map<String, dynamic> json) => AddDriverModel(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
    };
}
