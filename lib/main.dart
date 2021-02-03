import 'package:flutter/material.dart';
import 'pages/LoginPage.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}
