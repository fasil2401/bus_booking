// To parse this JSON data, do
//
//     final driverList = driverListFromJson(jsonString);

import 'dart:convert';

DriverList driverListFromJson(String str) => DriverList.fromJson(json.decode(str));

String driverListToJson(DriverList data) => json.encode(data.toJson());

class DriverList {
    DriverList({
       required this.status,
       required this.driverList,
    });

    bool status;
    List<DriverListElement> driverList;

    factory DriverList.fromJson(Map<String, dynamic> json) => DriverList(
        status: json["status"],
        driverList: List<DriverListElement>.from(json["driver_list"].map((x) => DriverListElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "driver_list": List<dynamic>.from(driverList.map((x) => x.toJson())),
    };
}

class DriverListElement {
    DriverListElement({
       required this.id,
        this.name,
        this.mobile,
        this.licenseNo,
    });

    int id;
    String? name;
    dynamic mobile;
    String ?licenseNo;

    factory DriverListElement.fromJson(Map<String, dynamic> json) => DriverListElement(
        id: json["id"],
        name: json["name"] == null ? null : json["name"],
        mobile: json["mobile"],
        licenseNo: json["license_no"] == null ? null : json["license_no"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name == null ? null : name,
        "mobile": mobile,
        "license_no": licenseNo == null ? null : licenseNo,
    };
}
