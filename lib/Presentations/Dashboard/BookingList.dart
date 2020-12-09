import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/HeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Constants/RadiusConstant.dart';
import 'package:gozo_flutter/Constants/ShadowBlurConstant.dart';
import 'package:gozo_flutter/Constants/WidthConstant.dart';

import 'BookingItems.dart';

class BookingList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidthConstant.dashboardWidget,
      height: HeightConstant.dashboardWidget,
      padding: EdgeInsets.all(PaddingConstant.medium),
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(RadiusConstant.widgetBorder),
          color: ColorConstant.widgetBackground,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.shadow,
              blurRadius: ShadowBlurConstant.widget,
            ),
          ]),
      child: Column(
        children: [
          Expanded(
            child: Text(
              'Bàn đang chờ',
              style: TextStyle(
                  fontWeight: FontWeightConstant.title,
                  fontSize: FontSizeConstant.title),
            ),
          ),
          Expanded(
            flex: 8,
            child: CustomScrollView(slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                    BookingItem(),
                    BookingItem(),
                    BookingItem(),
                    BookingItem(),
                    BookingItem(),
                    BookingItem(),
                  ])),
            ]),
          ),
        ],
      ),
    );
  }
}