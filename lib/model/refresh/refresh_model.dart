// To parse this JSON data, do
//
//     final refresh = refreshFromJson(jsonString);

import 'dart:convert';

Refresh refreshFromJson(String str) => Refresh.fromJson(json.decode(str));

String refreshToJson(Refresh data) => json.encode(data.toJson());

class Refresh {
    Refresh({
       required this.access,
       required this.refresh,
    });

    String access;
    String refresh;

    factory Refresh.fromJson(Map<String, dynamic> json) => Refresh(
        access: json["access"],
        refresh: json["refresh"],
    );

    Map<String, dynamic> toJson() => {
        "access": access,
        "refresh": refresh,
    };
}
