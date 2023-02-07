// To parse this JSON data, do
//
//     final infoDb = infoDbFromJson(jsonString);

import 'dart:convert';

List<InfoDb> infoDbFromJson(String str) =>
    List<InfoDb>.from(json.decode(str).map((x) => InfoDb.fromJson(x)));

String infoDbToJson(List<InfoDb> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InfoDb {
  InfoDb({
    required this.id,
    required this.password,
    required this.user,
  });

  int id;
  dynamic password;
  String user;

  factory InfoDb.fromJson(Map<String, dynamic> json) => InfoDb(
        id: json["id"],
        password: json["password"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "password": password,
        "user": user,
      };
}
