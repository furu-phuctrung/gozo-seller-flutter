import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gozo_flutter/Blocs/DashboardBloc.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/HeightConstant.dart';
import 'package:gozo_flutter/Constants/RadiusConstant.dart';
import 'package:gozo_flutter/Constants/ShadowBlurConstant.dart';
import 'package:gozo_flutter/Constants/WidthConstant.dart';
import 'package:gozo_flutter/Events/DashoardEvent.dart';
import 'package:gozo_flutter/States/DashboardState.dart';

import 'BookingItems.dart';

class BookingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final DashboardBloc bloc = BlocProvider.of<DashboardBloc>(context);

    return Container(
      width: WidthConstant.dashboardWidget,
      height: HeightConstant.dashboardWidget,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusConstant.widgetBorder),
          color: ColorConstant.widgetBackground,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.shadow,
              blurRadius: ShadowBlurConstant.widget,
            ),
          ]),
      child: BlocBuilder<DashboardBloc, DashboardState>(builder: (_, state) {
        return CustomScrollView(slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(RadiusConstant.widgetBorder),
                    topRight: Radius.circular(RadiusConstant.widgetBorder))),
            title: Text(
              'Bàn đang chờ',
              style: TextStyle(
                  fontWeight: FontWeightConstant.title,
                  fontSize: FontSizeConstant.title,
                  color: Colors.white),
            ),
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return BookingItem((state as LoadedDashboard).bookings[index]);
          }, childCount: (state as LoadedDashboard).bookings.length)),
        ]);
      }),
    );
  }
}
