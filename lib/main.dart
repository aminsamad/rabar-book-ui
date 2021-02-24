import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rabar_book/home.dart';
import 'package:rabar_book/model/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book ui ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "kurdish",
      ),
      home: HomePage(),
    );
  }
}
