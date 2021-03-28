import 'package:flutter/material.dart';
import 'package:ui_aibou/screens/scenarioInfoPage.dart';

class situationList extends StatefulWidget {
  String name;
  String place;
  String imageUrl;
  String time;
  bool isMessageRead;
  situationList(
      {@required this.name,
      @required this.place,
      @required this.imageUrl,
      @required this.time,
      @required this.isMessageRead});
  @override
  _situationListState createState() => _situationListState();
}

class _situationListState extends State<situationList> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return scenarioInfoPage();
            },
          ));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  height: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          color: Colors.white,
                          child: Row(
                            // これで両端に寄せる
                            children: [
                              Container(
                                width: (screenWidth - 20) * 0.3,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 30, horizontal: 10),
                                  child: Column(children: [
                                    Text(widget.name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          letterSpacing: 1,
                                        ),
                                        textAlign: TextAlign.left),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('テキストテキストテキスト',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          letterSpacing: 1,
                                        ),
                                        textAlign: TextAlign.left),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.blue.shade900.withOpacity(0.5),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        width: (screenWidth - 20) * 0.55,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.cyan.withOpacity(0.8),
                          image: DecorationImage(
                              image: AssetImage(widget.imageUrl),
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.place,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        widget.place,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            letterSpacing: 1,
                                            color: Colors.white),
                                      ),
                                    ])
                              ]),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
