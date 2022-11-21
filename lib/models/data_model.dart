// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.id,
    this.name,
    this.description,
    this.image,
    this.startDate,
    this.endDate,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? description;
  String? image;
  String? startDate;
  String? endDate;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "start_date": startDate,
        "end_date": endDate,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
