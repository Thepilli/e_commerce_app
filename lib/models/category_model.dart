// [
//     {
//         "id": 1,
//         "name": "Clothes",
//         "image": "https://picsum.photos/640/640?r=6374",
//         "creationAt": "2023-08-13T17:29:07.000Z",
//         "updatedAt": "2023-08-13T17:29:07.000Z"
//     },
// ]

// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

List<CategoryModel> categoryModelFromJson(String str) =>
    List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel extends ChangeNotifier {
  int id;
  String name;
  String image;
  String creationAt;
  String updatedAt;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        creationAt: json["creationAt"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "creationAt": creationAt,
        "updatedAt": updatedAt,
      };
}
