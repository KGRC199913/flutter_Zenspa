import 'package:flutter/material.dart';

import 'LoginPage.dart';

void main() => runApp(ZenspaApp());

class ZenspaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zenspa',
      home: LoginPage(),
    );
  }
}

