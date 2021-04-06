import 'package:flutter/material.dart';
import 'package:ui_aibou/models/chatMessageModel.dart';
import 'package:ui_aibou/screens/wordsDifinitionPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'images/menu_button.svg',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Movies Tickets",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "THEATRE",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.grey.shade800,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            SafeArea(
                child: Container(
                    child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: GestureDetector(
                      onLongPress: (messages[index].messageType == "receiver"
                          ? () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return wordsDifinitionPage();
                              }));
                            }
                          : () {}),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset:
                                    Offset(2, 2), // changes position of shadow
                              ),
                            ],
                            gradient: (messages[index].messageType == "receiver"
                                ? LinearGradient(
                                    begin: FractionalOffset.topLeft,
                                    end: FractionalOffset.bottomRight,
                                    colors: [
                                      const Color.fromRGBO(255, 255, 255, 1),
                                      const Color.fromRGBO(255, 255, 255, 1),
                                    ],
                                  )
                                : LinearGradient(
                                    begin: FractionalOffset.topLeft,
                                    end: FractionalOffset.bottomRight,
                                    colors: [
                                      const Color.fromRGBO(43, 230, 237, 1),
                                      const Color.fromRGBO(43, 160, 250, 1),
                                    ],
                                  ))),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          messages[index].messageContent,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .4,
                              color: (messages[index].messageType == "receiver"
                                  ? Colors.grey.shade900
                                  : Colors.white)),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ))),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            image: AssetImage('images/change_micro.png'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type your respons...",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '( 2 / 15 )',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/send_icon.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello! How may I help you?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hello! How may I help you?", messageType: "sender"),
    ChatMessage(
        messageContent: "Sure. How many tickets would you like?",
        messageType: "receiver"),
    ChatMessage(messageContent: "4 tickets please.", messageType: "sender"),
    ChatMessage(
        messageContent: "Okay. Here's your ticket and it’s ＄40.",
        messageType: "receiver"),
  ];
}
