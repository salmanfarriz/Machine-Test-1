import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
    ChatModel({
        this.avatar,
        this.name,
        this.massage,
        this.date,
    });

    String? avatar;
    String? name;
    String? massage;
    String? date;

    factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        avatar: json["Avatar"],
        name: json["Name"],
        massage: json["Massage"],
        date: json["Date"],
    );

    Map<String, dynamic> toJson() => {
        "Avatar": avatar,
        "Name": name,
        "Massage": massage,
        "Date": date,
    };
}
