import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

class Login {
  var status;
  var reason;
  var userId;
  Profile? profile;

  Login({this.status, this.reason, this.userId, this.profile});

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    status: json["status"],
    reason: json["reason"],
    userId: json["user_id"],
    profile: json["profile"] != null ? Profile.fromJson(json["profile"]) : null,
  );
}

class Profile {
  var id;
  var firstName;
  var lastName;
  var userName;
  var countryId;
  var regionId;
  var userEmail;
  var mobile;
  var groupId;
  var image;

  Profile({
    this.id,
    this.firstName,
    this.lastName,
    this.userName,
    this.countryId,
    this.regionId,
    this.userEmail,
    this.mobile,
    this.groupId,
    this.image,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    userName: json["user_name"],
    countryId: json["country_id"],
    regionId: json["region_id"],
    userEmail: json["user_email"],
    mobile: json["mobile"],
    groupId: json["group_id"],
    image: json["image"],
  );
}
