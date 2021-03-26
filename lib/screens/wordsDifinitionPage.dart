import 'package:flutter/material.dart';

class wordsDifinitionPage extends StatefulWidget {
  @override
  _wordsDifinitionPageState createState() => _wordsDifinitionPageState();
}

class _wordsDifinitionPageState extends State<wordsDifinitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  const Color.fromRGBO(43, 220, 237, 1),
                  const Color.fromRGBO(43, 160, 250, 1),
                ],
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                      Container(
                        child: Center(
                          child: Text('Words List',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  letterSpacing: .5,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.menu,
                            color: Colors.transparent,
                            size: 30,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 90,
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Sure. How many tickets would you like?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(children: []),
    );
  }
}
