import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cửa hàng của bạn',
                style: TextStyle(
                    fontSize: FontSizeConstant.largeTitle,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(PaddingConstant.medium),
                child: DropdownButton(
                  hint: Text('Chọn cửa hàng'),
                  onChanged: (value) => {},
                  value: null,
                  items: [1, 2, 3, 4, 5]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text('Cửa hàng $e'),
                          ))
                      .toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.all(PaddingConstant.medium),
                child: RaisedButton(
                  padding: EdgeInsets.all(PaddingConstant.medium),
                  color: ColorConstant.primary,
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
