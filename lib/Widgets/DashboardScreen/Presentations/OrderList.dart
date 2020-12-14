import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Blocs/DashboardBloc.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Presentations/OrderItem.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/States/DashboardState.dart';

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final DashboardBloc bloc = BlocProvider.of<DashboardBloc>(context);

    return Container(
      child: BlocBuilder<DashboardBloc, DashboardState>(builder: (_, state) {
        return CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return OrderItem((state as LoadedDashboard).orderLineItems[index]);
          }, childCount: (state as LoadedDashboard).orderLineItems.length)),
        ]);
      }),
    );
  }
}
