import 'package:flutter/material.dart';
import 'package:ui_aibou/screens/ChatPage.dart';
import 'package:ui_aibou/screens/selectSituationPage.dart';

class scenarioInfoPage extends StatefulWidget {
  @override
  _scenarioInfoPageState createState() => _scenarioInfoPageState();
}

class _scenarioInfoPageState extends State<scenarioInfoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: AssetImage('images/movies.jpg'),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.centerRight),
                            ))
                      ],
                    ),
                  ),
                  TabWrap(),
                  Expanded(
                    child: TabBarView(children: <Widget>[
                      TabPage(title: 'Top'),
                      TabPage(title: 'Info'),
                      TabPage(title: 'Level'),
                    ]),
                  ),
                ]),
              ],
            )));
  }
}

class TabWrap extends StatelessWidget {
  final _tab = <Tab>[
    Tab(text: 'Top'),
    Tab(text: 'Info'),
    Tab(text: 'Level'),
  ];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: _tab,
    );
  }
}

class TabPage extends StatelessWidget {
  final String title;

  const TabPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(color: Colors.red, fontSize: 15)),
        ],
      ),
    );
  }
}
