import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenspa/NumericKeyboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.blueGrey.withOpacity(0.6), BlendMode.darken)),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3.0,
              sigmaY: 3.0,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/logo@3x.png"),
                    width: 92.0,
                    height: 75.0,
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "Welcome to Zenspa",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                fontFamily: "SFProDisplay",
                                fontStyle: FontStyle.normal,
                                fontSize: 38.0),
                          ),
                        ), // "Welcome to Zenspa" Text
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "Enter your phone number to check in",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w300,
                                fontFamily: "SFProDisplay",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.0),
                          ),
                        ), // "Enter your phone number to check in" Text
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          width: 307,
                          height: 100,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                    BorderSide(color: Colors.white)),
                                hintText: "111-222-3333",
                                hintStyle: _InputTextStyle(),
                                contentPadding:
                                EdgeInsets.fromLTRB(75, 20, 0, 5)),
                            style: _InputTextStyle(),
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.white,
                          ),
                        ), // Textfield
                        NumericKeyboard(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "I don't have phone number",
                                  style: TextStyle(
                                      color: const Color(0xe6ffffff),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SFProDisplay",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 17.0),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: CupertinoColors.white,
                                )
                              ],
                            ),
                            onTap: () {

                            },
                          ),
                        ), // "I don't have phone number" Inkwell
                      ],
                    ),
                  ),
                  Positioned(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Text(
                          "Power by Zentech \u2022 By sale contact us: 6308546553",
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontWeight: FontWeight.w300,
                              fontFamily: "SFProDisplay",
                              fontStyle: FontStyle.normal,
                              fontSize: 13.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InputTextStyle extends TextStyle {
  @override
  Color get color => Colors.white;

  @override
  FontWeight get fontWeight => FontWeight.w400;

  @override
  String get fontFamily => "SFProDisplay";

  @override
  double get fontSize => 25.0;
}
