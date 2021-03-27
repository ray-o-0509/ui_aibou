import 'package:flutter/material.dart';
import 'package:ui_aibou/screens/homePage.dart';

class signInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screen_height * 0.4,
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/icon_circle_with_shadow.png'),
                      width: 110,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'AIBOU',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: screen_height * 0.6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                colors: [
                  const Color.fromRGBO(43, 250, 237, 1),
                  const Color.fromRGBO(43, 160, 250, 1),
                ],
              )),
              child: Container(
                margin: EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your usename or email",
                          labelText: "Username / Email",
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey.shade800.withOpacity(.3),
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 14),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 16),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey.shade800.withOpacity(.3),
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 14),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 16),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.cyan,
                          value: true,
                          // value: _isCheck,
                          // onChanged: _handleCheckbox,
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                              color: Colors.grey.shade800.withOpacity(.5),
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text(
                                    'LOG IN',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 18,
                                      letterSpacing: 1,
                                    ),
                                  )),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }));
                              },
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ) //ボタンの背景色
                                  ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// bool _isCheck = false;

// void _handleCheckbox(bool isCheck) {
//   setState(() {
//     _isCheck = isCheck;
//   });
// }
