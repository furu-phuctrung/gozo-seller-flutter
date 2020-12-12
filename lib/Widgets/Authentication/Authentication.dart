import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';

class Authentication extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  final bool authorized;
  final Widget child;

  Authentication({Key key, this.authorized, this.child}) : super(key: key);

  Widget build(BuildContext context) {
    if (!authorized)
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(PaddingConstant.small),
                    child: Text("Đăng nhập hết hạn")),
                RaisedButton(
                  onPressed: () {
                    navigatorKey.currentState.pushNamed("/login");
                  },
                  padding: EdgeInsets.all(PaddingConstant.small),
                  color: Colors.red,
                  child: Icon(Icons.logout, color: Colors.white),
                  shape: CircleBorder(),
                )
              ],
            ),
          ),
        ),
      );
    return child;
  }
}
