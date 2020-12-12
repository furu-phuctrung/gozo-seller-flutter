import 'package:flutter/cupertino.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/DashboardScreen.dart';
import 'package:gozo_flutter/Widgets/HomeScreen/HomeScreen.dart';
import 'package:gozo_flutter/Widgets/LoginScreen/Login.dart';

class ConfiguationConstant {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/login': (context) => Login(),
    '/': (context) => Home(),
    '/dashboard': (context) => DashboardScreen()
  };

  static final Map<String, String> navigatorLabel = {
    'Home': '/',
    'Stock': '/stocks',
    'Staff': '/staffs'
  };
}
