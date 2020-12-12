import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Constants/RadiusConstant.dart';
import 'package:gozo_flutter/Constants/ShadowBlurConstant.dart';
import 'package:gozo_flutter/Constants/SpacingConstant.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Models/OrderLineItem.dart';
import 'package:timeago/timeago.dart';

class OrderItem extends StatelessWidget {
  final OrderLineItem orderLineItem;
  OrderItem(this.orderLineItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(PaddingConstant.large),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusConstant.widgetBorder),
            color: ColorConstant.widgetBackground,
            boxShadow: [
              BoxShadow(
                color: ColorConstant.shadow,
                blurRadius: ShadowBlurConstant.widget,
              ),
            ]),
        padding: EdgeInsets.all(PaddingConstant.medium),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: SpacingConstant.medium,
          runSpacing: SpacingConstant.medium,
          children: [
            Text(
              "${orderLineItem.productName}",
              style: TextStyle(
                  fontWeight: FontWeightConstant.smallerTitle,
                  fontSize: FontSizeConstant.smallTitle),
            ),
            Text(
              "${format(orderLineItem.createdAt, locale: 'vn')}",
              style: TextStyle(
                fontSize: FontSizeConstant.annotation,
                fontStyle: FontStyle.italic,
                color: ColorConstant.annotation,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  child: Icon(Icons.check_rounded, color: Colors.white),
                  shape: CircleBorder(),
                  onPressed: () {},
                  color: ColorConstant.acceptButton,
                ),
                RaisedButton(
                  child: Icon(Icons.close_rounded, color: Colors.white),
                  shape: CircleBorder(),
                  onPressed: () {},
                  color: ColorConstant.denyButton,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
