import 'package:flutter/material.dart';
import 'package:ui_aibou/models/situationModel.dart';
import 'package:ui_aibou/widgets/situationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "AIbou",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey.shade700,
                            size: 22,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.search_rounded,
                            color: Colors.grey.shade700,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
                child: Container(
              child: ListView.builder(
                itemCount: situationArray.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return situationList(
                    name: situationArray[index].name,
                    place: situationArray[index].place,
                    imageUrl: situationArray[index].imageURL,
                    time: situationArray[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  List<situationModel> situationArray = [
    situationModel(
        name: "Movies Tickets",
        place: "THEATRE",
        imageURL: "images/movies.jpg",
        time: "Now"),
    situationModel(
        name: "Hotel Service",
        place: "HOTEL",
        imageURL: "images/hotel.jpg",
        time: "Now"),
  ];
}
