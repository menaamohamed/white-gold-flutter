// To parse this JSON data, do
//
//     final regionsModel = regionsModelFromJson(jsonString);

import 'dart:convert';

List<RegionsModel> regionsModelFromJson(String str) => List<RegionsModel>.from(
  json.decode(str).map((x) => RegionsModel.fromJson(x)),
);

String regionsModelToJson(List<RegionsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RegionsModel {
  var id;
  var name;
  var countryId;
  var shippingPrice;
  var status;

  RegionsModel({
    required this.id,
    required this.name,
    required this.countryId,
    required this.shippingPrice,
    required this.status,
  });

  factory RegionsModel.fromJson(Map<String, dynamic> json) => RegionsModel(
    id: json["id"],
    name: json["name"],
    countryId: json["country_id"],
    shippingPrice: json["shipping_price"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "country_id": countryId,
    "shipping_price": shippingPrice,
    "status": status,
  };
}
