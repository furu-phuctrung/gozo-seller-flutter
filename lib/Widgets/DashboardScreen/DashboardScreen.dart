import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Constants/SpacingConstant.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Blocs/DashboardBloc.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Presentations/AppDrawer.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Presentations/BookingList.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Presentations/OrderList.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/States/DashboardState.dart';

class DashboardScreen extends StatelessWidget {
  final List<Widget> tabViews = [BookingList(), OrderList()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DashboardBloc(),
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              drawer: AppDrawer(),
              appBar: AppBar(
                title: Text(
                  'GOZO',
                  style: TextStyle(
                      fontSize: FontSizeConstant.title,
                      fontWeight: FontWeightConstant.title,
                      color: Colors.white),
                ),
                iconTheme: IconThemeData(color: Colors.white),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.notes_rounded)),
                    Tab(icon: Icon(Icons.table_view)),
                  ],
                ),
              ),
              body: TabBarView(
                  children: tabViews
                      .map((widget) => Center(
                            child: BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                              if (state is UnloadedDashboard)
                                return CircularProgressIndicator();
                              return widget;
                            }),
                          ))
                      .toList()),
            )));
  }
}
