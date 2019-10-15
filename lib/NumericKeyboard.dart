import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumericKeyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 400,
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 2.9,
          mainAxisSpacing: 12,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(2.0),
          children: List.generate(12, (index) {
            return Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Opacity(
                  opacity: 0.4,
                  child: FloatingActionButton(
                    child: Text("$index"),
                    onPressed: () {},
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                ));
          })),
    );
  }
}
