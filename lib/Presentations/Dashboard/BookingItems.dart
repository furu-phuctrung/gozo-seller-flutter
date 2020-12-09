import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Models/Booking.dart';

class BookingItem extends StatelessWidget{
  final Booking booking = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: PaddingConstant.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Table 1',
            style:
            TextStyle(
                fontWeight: FontWeightConstant.smallerTitle,
                fontSize: FontSizeConstant.smallTitle),
          ),
          Text(
            'One minutes ago',
            style: TextStyle(
              fontSize: FontSizeConstant.annotation,
              fontStyle: FontStyle.italic,
              color: ColorConstant.annotation,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: PaddingConstant.medium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Icon(Icons.check_rounded,color: Colors.white),
                  shape: CircleBorder(),
                  onPressed: (){},
                  color: ColorConstant.acceptButton,
                ),
                RaisedButton(
                  child: Icon(Icons.close_rounded,color: Colors.white),
                  shape: CircleBorder(),
                  onPressed: (){},
                  color: ColorConstant.denyButton,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}