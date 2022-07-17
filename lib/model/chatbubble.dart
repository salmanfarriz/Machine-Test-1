// To parse this JSON data, do
//
//     final bubbleModel = bubbleModelFromJson(jsonString);

import 'dart:convert';

BubbleModel bubbleModelFromJson(String str) =>
    BubbleModel.fromJson(json.decode(str));

String bubbleModelToJson(BubbleModel data) => json.encode(data.toJson());

class BubbleModel {
  BubbleModel({
    required this.message,
    required this.isReaded,
    required this.isSent,
  });

  String message;
  bool isReaded;
  bool isSent;

  factory BubbleModel.fromJson(Map<String, dynamic> json) => BubbleModel(
        message: json["message"],
        isReaded: json["isReaded"],
        isSent: json["isSent"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "isReaded": isReaded,
        "isSent": isSent,
      };
}
