import 'package:flutter/material.dart';
import 'package:machinetest_ui_2/HomeScreen.dart';
import 'package:machinetest_ui_2/chatTile.dart';
import 'package:machinetest_ui_2/model/Chatmodel.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key,}) : super(key: key);
  

  List<ChatModel> chatList = [
    ChatModel(
      avatar:
          "https://timesofindia.indiatimes.com/thumb/msid-62403853,width-1200,height-900,resizemode-4/.jpg",
      name: "Salman Faris",
      massage: "Hello Good Morning",
      date: "7.00 am,Today",
    ),
    ChatModel(
      avatar:
          "https://www.pinkvilla.com/imageresize/tom_mission_impossible_0.jpg?width=752&format=webp&t=pvorg",
      name: "Aslam",
      massage: "Hello Good Morning",
      date: "10.40 am,Yesterday",
    ),
    ChatModel(
      avatar:
          "https://www.bollywoodhungama.com/wp-content/uploads/2022/03/John-Abraham-reacts-to-questions-on-The-Kashmir-Files-during-the-promotion-of-Attack-%E2%80%9CAsk-questions-related-to-this-film%E2%80%9D-1.jpg",
      name: "Ramees",
      massage: "Hello Good Morning",
      date: "12.10 am,Yesterday",
    ),
    ChatModel(
      avatar:
          "https://imgnew.outlookindia.com/uploadimage/library/16_9/16_9_5/IMAGE_1650463874.webp",
      name: "Saljas",
      massage: "Hello Good Morning",
      date: "10.40 am,Yesterday",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ChatTile(ChatData: chatList[index],);
        },
        itemCount: chatList.length,
      ),
    );
  }
}
