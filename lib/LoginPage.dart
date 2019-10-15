import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken)),
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
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Text(
                          "Enter your phone number to check in",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w300,
                              fontFamily: "SFProDisplay",
                              fontStyle: FontStyle.normal,
                              fontSize: 17.0),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        width: 400,
                        height: 200,
                        child: TextField(

                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: "111-222-3333",
                              hintStyle: _InputTextStyle(),
                              contentPadding:
                                  EdgeInsets.fromLTRB(125, 20, 0, 5)),
                            style: _InputTextStyle(),
                          keyboardType: TextInputType.phone,
                          focusNode: FocusNode(
                            
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InputTextStyle extends TextStyle{
  @override
  Color get color => Colors.white;
  @override
  FontWeight get fontWeight => FontWeight.w400;
  @override
  String get fontFamily => "SFProDisplay";
  @override
  double get fontSize => 25.0;
}