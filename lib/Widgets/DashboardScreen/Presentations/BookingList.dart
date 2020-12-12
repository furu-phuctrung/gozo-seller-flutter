import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gozo_flutter/Constants/ColorConstant.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/HeightConstant.dart';
import 'package:gozo_flutter/Constants/RadiusConstant.dart';
import 'package:gozo_flutter/Constants/ShadowBlurConstant.dart';
import 'package:gozo_flutter/Constants/WidthConstant.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Blocs/DashboardBloc.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/States/DashboardState.dart';

import 'BookingItem.dart';

class BookingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final DashboardBloc bloc = BlocProvider.of<DashboardBloc>(context);

    return Container(
      child: BlocBuilder<DashboardBloc, DashboardState>(builder: (_, state) {
        return CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return BookingItem((state as LoadedDashboard).bookings[index]);
          }, childCount: (state as LoadedDashboard).bookings.length)),
        ]);
      }),
    );
  }
}
