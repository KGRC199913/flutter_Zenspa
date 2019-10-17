import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumericKeyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 307,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                _getButton(1),
                _getButton(2),
                _getButton(3)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                _getButton(4),
                _getButton(5),
                _getButton(6)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                _getButton(7),
                _getButton(8),
                _getButton(9)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                _getButton(10),
                _getButton(0),
                _getButton(11)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getButton(int buttonType) {
  Widget buttonChild;
  if (buttonType < 10) {
    buttonChild = Text("$buttonType");
  } else {
    if (buttonType == 10) {
      buttonChild = Icon(Icons.backspace);
    } else if (buttonType == 11) {
      buttonChild = Icon(Icons.done);
    } else {
      buttonChild = Text("illegal parameter");
    }
  }

  return Expanded(
    child: FloatingActionButton(
      child: buttonChild ?? Text("Null"),
      onPressed: () {},
      foregroundColor: CupertinoColors.white,
      backgroundColor: CupertinoColors.white.withOpacity(0.3),
      elevation: 0.0,
    ),
  );
}