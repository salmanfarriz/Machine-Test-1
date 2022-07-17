import 'package:flutter/material.dart';
import 'package:machinetest_ui_2/model/chatbubble.dart';
import 'package:machinetest_ui_2/model/Chatmodel.dart';
import 'package:machinetest_ui_2/textmsg.dart';
import 'package:machinetest_ui_2/useraccount.dart';

// ignore: must_be_immutable
class PersonChat extends StatelessWidget {
  PersonChat({Key? key, required this.person_Chat}) : super(key: key);

  ChatModel person_Chat;

  // ignore: non_constant_identifier_names
  List<BubbleModel> ChatPersonList = [
    BubbleModel(
      message: 'Hello',
      isReaded: true,
      isSent: true,
    ),
    BubbleModel(
      message: 'How have you been',
      isReaded: true,
      isSent: true,
    ),
    BubbleModel(
        message: 'Hey Aslam, I am doing fine dude, wbu?',
        isReaded: true,
        isSent: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserAccount(UserData: person_Chat),
              ),
            );
          },
          child: CircleAvatar(
            backgroundImage: NetworkImage(person_Chat.avatar.toString()),
          ),
        ),
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserAccount(UserData: person_Chat),
              ),
            );
          },
          child: Column(
            children: [
              Text(person_Chat.name.toString()),
              const Text(
                'online',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
      body: SizedBox(
        height: 190,
        child: ListView.builder(itemBuilder: ((context, index) {
          return TextMsg(
            singleMsg: ChatPersonList[index],
          );
        })),
      ),
    );
  }
}
