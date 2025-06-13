import 'dart:convert';

List<CountryModel> countryFromJson(String str) => List<CountryModel>.from(
  json.decode(str).map((x) => CountryModel.fromJson(x)),
);

class CountryModel {
  var id;
  var isoCode;
  var pyname;
  var merchantid;
  var code;
  var apikey;
  var name;
  var status;
  var postReq;
  var taxValue;
  var valueRecieving;
  var phoneCode;
  var phoneNumbers;

  CountryModel({
    this.id,
    this.isoCode,
    this.pyname,
    this.merchantid,
    this.code,
    this.apikey,
    this.name,
    this.status,
    this.postReq,
    this.taxValue,
    this.valueRecieving,
    this.phoneCode,
    this.phoneNumbers,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
    id: json["id"],
    isoCode: json["iso_code"],
    pyname: json["pyname"],
    merchantid: json["merchantid"],
    code: json["code"],
    apikey: json["apikey"],
    name: json["name"],
    status: json["status"],
    postReq: json["post_req"],
    taxValue: json["tax_value"],
    valueRecieving: json["value_recieving"],
    phoneCode: json["phone_code"],
    phoneNumbers: json["phone_numbers"],
  );
}
