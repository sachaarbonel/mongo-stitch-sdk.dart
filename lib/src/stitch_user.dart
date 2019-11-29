// To parse this JSON data, do
//
//     final stitchUser = stitchUserFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class StitchUser {
  final String accessToken;
  final String userId;
  final String deviceId;
  final String refreshToken;

  StitchUser({
    @required this.accessToken,
    @required this.userId,
    @required this.deviceId,
    @required this.refreshToken,
  });

  factory StitchUser.fromRawJson(String str) =>
      StitchUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StitchUser.fromJson(Map<String, dynamic> json) => StitchUser(
        accessToken: json["access_token"] == null ? null : json["access_token"],
        userId: json["user_id"] == null ? null : json["user_id"],
        deviceId: json["device_id"] == null ? null : json["device_id"],
        refreshToken:
            json["refresh_token"] == null ? null : json["refresh_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken == null ? null : accessToken,
        "user_id": userId == null ? null : userId,
        "device_id": deviceId == null ? null : deviceId,
        "refresh_token": refreshToken == null ? null : refreshToken,
      };
}
