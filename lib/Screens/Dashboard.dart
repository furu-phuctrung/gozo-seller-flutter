import 'package:flutter/material.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Constants/RadiusConstant.dart';
import 'package:gozo_flutter/Constants/ShadowBlurConstant.dart';
import 'package:gozo_flutter/Constants/SpacingConstant.dart';
import 'package:gozo_flutter/Constants/WidthConstant.dart';

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
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: WidthConstant.dashboardWidget,
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
                child: Wrap(
                  spacing: SpacingConstant.medium,
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Bàn đang chờ',
                      style: TextStyle(
                          fontWeight: FontWeightConstant.title,
                          fontSize: FontSizeConstant.title),
                    ),
                    Column(
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
                            fontStyle: FontStyle.italic
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(PaddingConstant.small),
                          child: Row(
                            children: [
                              RaisedButton(
                                child: Icon(Icons.check_rounded,color: Colors.white),
                                shape: CircleBorder(),
                                onPressed: (){},
                                color: ColorConstant.acceptButton,
                              ),
                              RaisedButton(
                                child: Icon(Icons.check_rounded,color: Colors.white),
                                shape: CircleBorder(),
                                onPressed: (){},
                                color: ColorConstant.acceptButton,
                              ),
                              RaisedButton(
                                child: Icon(Icons.check_rounded,color: Colors.white),
                                shape: CircleBorder(),
                                onPressed: (){},
                                color: ColorConstant.acceptButton,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
