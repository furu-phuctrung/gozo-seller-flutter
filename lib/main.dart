import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Screens/Home.dart';
import 'package:gozo_flutter/Screens/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gozo Seller',
      debugShowCheckedModeBanner: false,
      routes: {'/login': (context) => Login(), '/': (context) => Home()},
      initialRoute: '/',
      theme: ThemeData(primaryColor: ColorConstant.primary),
    );
  }
}
