import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Constants/SpacingConstant.dart';
import 'package:gozo_flutter/Presentations/Dashboard/BookingList.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GOZO',
          style: TextStyle(
              fontSize: FontSizeConstant.title,
              fontWeight: FontWeightConstant.title,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PaddingConstant.large),
          child: Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: SpacingConstant.large,
              runSpacing: SpacingConstant.large,
              children: [
                BookingList(),
                BookingList(),
                BookingList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
