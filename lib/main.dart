import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/ConfigurationConstant.dart';
import 'package:gozo_flutter/Widgets/Authentication/Authentication.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/DashboardScreen.dart';
import 'package:gozo_flutter/Widgets/HomeScreen/HomeScreen.dart';
import 'package:gozo_flutter/Widgets/LoginScreen/Login.dart';

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
      routes: ConfiguationConstant.routes,
      initialRoute: '/',
      theme: ThemeData(primaryColor: ColorConstant.primary),
      builder: (_, widget) {
        return Authentication(
          authorized: true,
          child: widget,
        );
      },
    );
  }
}
