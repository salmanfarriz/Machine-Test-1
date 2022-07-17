// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machinetest_ui_2/chatTile.dart';
import 'package:machinetest_ui_2/chatdetails.dart';
import 'package:machinetest_ui_2/sample.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 251, 249, 249),
          elevation: 0,
          title: Row(
            children: [
              const Text(
                'Conversation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 110,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 251, 200, 217),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.add, color: Colors.pink, size: 18),
                      Text(
                        'Add New',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: 
        // BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.message)),
        // ]),
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.message,
                color: Colors.pink,semanticLabel: 'Chats',
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.history,
                color: Colors.pink,
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.person,
                color: Colors.pink,
              ),
            ),
          ],

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 223, 223, 222)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search'),
                ),
              ),
            ),
            SizedBox(height: 650, width: 500, child: ChatPage())
          ],
        ),
        // bottomNavigationBar: Container(),
      ),
    );
  }
}
