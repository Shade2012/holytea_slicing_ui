// To parse this JSON data, do
//
//     final holyteaModel = holyteaModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<HolyteaModel> holyteaModelFromJson(String str) => List<HolyteaModel>.from(json.decode(str).map((x) => HolyteaModel.fromJson(x)));

String holyteaModelToJson(List<HolyteaModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HolyteaModel {
  int id;
  String name;
  String category;
  String description;
  int price;
  double rating;
  String image;
  int quantity;


  HolyteaModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.rating,
    required this.image,
    required this.quantity,
  });

  factory HolyteaModel.fromJson(Map<String, dynamic> json) => HolyteaModel(
    id: json["id"],
    name: json["name"],
    category: json["category"],
    description: json["description"],
    price: json["price"],
    rating: json["rating"]?.toDouble(),
    image: json["image"],
    quantity: 1,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category": category,
    "description": description,
    "price": price,
    "rating": rating,
    "image": image,
    "quantity": quantity,
  };
}
