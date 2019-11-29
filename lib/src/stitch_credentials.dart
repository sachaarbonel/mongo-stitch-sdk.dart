// To parse this JSON data, do
//
//     final userApiKeyCredential = userApiKeyCredentialFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

abstract class StitchCredential {
  final String providerName;

  StitchCredential(this.providerName);
  Map<String, dynamic> toJson() => {};
}

class UserApiKeyCredential extends StitchCredential {
  String providerName;
  final String providerType;
  final Material material;
  final ProviderCapabilities providerCapabilities;
  final Options options;

  UserApiKeyCredential({
    String providerName,
    @required this.providerType,
    @required this.material,
    @required this.providerCapabilities,
    @required this.options,
  }) : super(providerName);

  factory UserApiKeyCredential.fromRawJson(String str) =>
      UserApiKeyCredential.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserApiKeyCredential.fromJson(Map<String, dynamic> json) =>
      UserApiKeyCredential(
        providerName:
            json["providerName"] == null ? null : json["providerName"],
        providerType:
            json["providerType"] == null ? null : json["providerType"],
        material: json["material"] == null
            ? null
            : Material.fromJson(json["material"]),
        providerCapabilities: json["providerCapabilities"] == null
            ? null
            : ProviderCapabilities.fromJson(json["providerCapabilities"]),
        options:
            json["options"] == null ? null : Options.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "providerName": providerName == null ? null : providerName,
        "providerType": providerType == null ? null : providerType,
        "material": material == null ? null : material.toJson(),
        "providerCapabilities":
            providerCapabilities == null ? null : providerCapabilities.toJson(),
        "options": options == null ? null : options.toJson(),
      };
}

class Material {
  final String key;

  Material({
    @required this.key,
  });

  factory Material.fromRawJson(String str) =>
      Material.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Material.fromJson(Map<String, dynamic> json) => Material(
        key: json["key"] == null ? null : json["key"],
      );

  Map<String, dynamic> toJson() => {
        "key": key == null ? null : key,
      };
}

class Options {
  final Device device;

  Options({
    @required this.device,
  });

  factory Options.fromRawJson(String str) => Options.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        device: json["device"] == null ? null : Device.fromJson(json["device"]),
      );

  Map<String, dynamic> toJson() => {
        "device": device == null ? null : device.toJson(),
      };
}

class Device {
  final String deviceId;
  final String appId;
  final String appVersion;
  final String platform;
  final String platformVersion;
  final String sdkVersion;

  Device({
    @required this.deviceId,
    @required this.appId,
    @required this.appVersion,
    @required this.platform,
    @required this.platformVersion,
    @required this.sdkVersion,
  });

  factory Device.fromRawJson(String str) => Device.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        deviceId: json["deviceId"] == null ? null : json["deviceId"],
        appId: json["appId"] == null ? null : json["appId"],
        appVersion: json["appVersion"] == null ? null : json["appVersion"],
        platform: json["platform"] == null ? null : json["platform"],
        platformVersion:
            json["platformVersion"] == null ? null : json["platformVersion"],
        sdkVersion: json["sdkVersion"] == null ? null : json["sdkVersion"],
      );

  Map<String, dynamic> toJson() => {
        "deviceId": deviceId == null ? null : deviceId,
        "appId": appId == null ? null : appId,
        "appVersion": appVersion == null ? null : appVersion,
        "platform": platform == null ? null : platform,
        "platformVersion": platformVersion == null ? null : platformVersion,
        "sdkVersion": sdkVersion == null ? null : sdkVersion,
      };
}

class ProviderCapabilities {
  final bool reusesExistingSession;

  ProviderCapabilities({
    @required this.reusesExistingSession,
  });

  factory ProviderCapabilities.fromRawJson(String str) =>
      ProviderCapabilities.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProviderCapabilities.fromJson(Map<String, dynamic> json) =>
      ProviderCapabilities(
        reusesExistingSession: json["reusesExistingSession"] == null
            ? null
            : json["reusesExistingSession"],
      );

  Map<String, dynamic> toJson() => {
        "reusesExistingSession":
            reusesExistingSession == null ? null : reusesExistingSession,
      };
}

// To parse this JSON data, do
//
//     final anonymousCredential = anonymousCredentialFromJson(jsonString);

class AnonymousCredential extends StitchCredential {
  String providerName;
  final String providerType;
  final Material material;
  final ProviderCapabilities providerCapabilities;
  final Options options;

  AnonymousCredential({
    String providerName,
    @required this.providerType,
    @required this.material,
    @required this.providerCapabilities,
    @required this.options,
  }) : super(providerName);

  factory AnonymousCredential.fromRawJson(String str) =>
      AnonymousCredential.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnonymousCredential.fromJson(Map<String, dynamic> json) =>
      AnonymousCredential(
        providerName:
            json["providerName"] == null ? null : json["providerName"],
        providerType:
            json["providerType"] == null ? null : json["providerType"],
        material: json["material"] == null
            ? null
            : Material.fromJson(json["material"]),
        providerCapabilities: json["providerCapabilities"] == null
            ? null
            : ProviderCapabilities.fromJson(json["providerCapabilities"]),
        options:
            json["options"] == null ? null : Options.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "providerName": providerName == null ? null : providerName,
        "providerType": providerType == null ? null : providerType,
        "material": material == null ? null : material.toJson(),
        "providerCapabilities":
            providerCapabilities == null ? null : providerCapabilities.toJson(),
        "options": options == null ? null : options.toJson(),
      };
}
