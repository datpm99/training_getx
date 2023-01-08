import 'dart:convert';

GlobalNotifyModel globalNotifyModelFromJson(String str) =>
    GlobalNotifyModel.fromJson(json.decode(str));

class GlobalNotifyModel {
  GlobalNotifyModel({
    required this.status,
    required this.error,
    this.data,
  });

  int status;
  String error;
  GlobalNotify? data;

  factory GlobalNotifyModel.fromJson(Map<String, dynamic> json) =>
      GlobalNotifyModel(
        status: json["status"] ?? 0,
        error: json["error"] ?? '',
        data: GlobalNotify.fromJson(json["data"]),
      );
}

class GlobalNotify {
  GlobalNotify({
    required this.title,
    required this.message,
    required this.notifyAppType,
    required this.versionAndroid,
    required this.versionApple,
    required this.optionalUpdate,
    required this.urlApple,
    required this.urlAndroid,
  });

  String title;
  String message;
  String notifyAppType;
  String versionAndroid;
  String versionApple;
  String optionalUpdate;
  String urlApple;
  String urlAndroid;

  factory GlobalNotify.fromJson(Map<String, dynamic> json) => GlobalNotify(
        title: json["title"] ?? '',
        message: json["message"] ?? '',
        notifyAppType: json["notificationAppType"] ?? '',
        versionAndroid: json["versionAndroid"] ?? '',
        versionApple: json["versionApple"] ?? '',
        optionalUpdate: json["optionalUpdate"] ?? '',
        urlApple: json["urlApple"] ?? '',
        urlAndroid: json["urlAndroid"] ?? '',
      );
}
