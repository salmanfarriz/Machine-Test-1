// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:machinetest_ui_2/model/chatbubble.dart';

// ignore: must_be_immutable
class TextMsg extends StatefulWidget {
  TextMsg({Key? key, required this.singleMsg}) : super(key: key);
  BubbleModel singleMsg;

  @override
  State<TextMsg> createState() => _TextMsgState();
}

class _TextMsgState extends State<TextMsg> {
  @override
  Widget build(BuildContext context) {
    return Align(
      
      alignment: widget.singleMsg.isSent == true
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 100),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: widget.singleMsg.isSent == false
              ? const Color.fromARGB(255, 164, 229, 253)
              : Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 55, 10),
                child: Text(
                  widget.singleMsg.message,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          margin: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
