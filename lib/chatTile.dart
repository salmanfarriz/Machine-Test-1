// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:machinetest_ui_2/model/Chatmodel.dart';
import 'package:machinetest_ui_2/personchat.dart';

// ignore: must_be_immutable
class ChatTile extends StatelessWidget {
  ChatTile({Key? key, required this.ChatData}) : super(key: key);
  ChatModel ChatData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PersonChat(person_Chat: ChatData),
            ));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(ChatData.avatar.toString()),
        ),
        title: Text(ChatData.name.toString()),
        subtitle: Text(ChatData.massage.toString()),
        trailing: Text(ChatData.date.toString()),
      ),
    );
  }
}
