import 'package:flutter/material.dart';
import 'package:uts_123190033/detail.dart';
import 'package:uts_123190033/kalender.dart';
import 'package:uts_123190033/landingpage.dart';
import 'package:uts_123190033/login.dart';
import 'package:uts_123190033/tabung.dart';
import 'package:uts_123190033/trapesium.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS_123190033',
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home:  LoginPage(),
    );
  }
}