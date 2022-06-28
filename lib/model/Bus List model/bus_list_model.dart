// To parse this JSON data, do
//
//     final busList = busListFromJson(jsonString);

import 'dart:convert';

BusList busListFromJson(String str) => BusList.fromJson(json.decode(str));

String busListToJson(BusList data) => json.encode(data.toJson());

class BusList {
    BusList({
       required this.status,
       required this.busList,
    });

    bool status;
    List<BusListElement> busList;

    factory BusList.fromJson(Map<String, dynamic> json) => BusList(
        status: json["status"],
        busList: List<BusListElement>.from(json["bus_list"].map((x) => BusListElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "bus_list": List<dynamic>.from(busList.map((x) => x.toJson())),
    };
}

class BusListElement {
    BusListElement({
       required this.id,
       required this.name,
       required this.image,
       required this.seatCount,
       required this.type,
        this.driver,
    });

    int id;
    String name;
    String image;
    String seatCount;
    String type;
    int? driver;

    factory BusListElement.fromJson(Map<String, dynamic> json) => BusListElement(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        seatCount: json["seat_count"],
        type: json["type"],
        driver: json["driver"] == null ? null : json["driver"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "seat_count": seatCount,
        "type": type,
        "driver": driver == null ? null : driver,
    };
}
