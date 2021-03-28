import 'package:flutter/material.dart';
import 'package:ui_aibou/screens/ChatPage.dart';

class scenarioInfoPage extends StatefulWidget {
  @override
  _scenarioInfoPageState createState() => _scenarioInfoPageState();
}

class _scenarioInfoPageState extends State<scenarioInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          elevation: 3,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(),
          icon: Icon(
            Icons.arrow_right,
            color: Colors.grey.shade800,
          ),
          label: Text(
            'START',
            style: TextStyle(color: Colors.grey.shade800),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return chatPage();
                  },
                  fullscreenDialog: true,
                ));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(82, 211, 204, 1),
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  // Text(
                  //   "Scenario Info.",
                  //   style: TextStyle(
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w500,
                  //       color: Colors.grey.shade800,
                  //       letterSpacing: 1),
                  // ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Color.fromRGBO(82, 211, 204, 1),
              ),
            ]),
          ],
        ));
  }
}
