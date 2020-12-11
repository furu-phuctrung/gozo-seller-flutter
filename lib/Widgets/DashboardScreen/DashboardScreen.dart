import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gozo_flutter/Constants/FontSizeConstant.dart';
import 'package:gozo_flutter/Constants/FontWeightConstant.dart';
import 'package:gozo_flutter/Constants/PaddingConstant.dart';
import 'package:gozo_flutter/Constants/SpacingConstant.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Blocs/DashboardBloc.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Presentations/BookingList.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Middlewares/Authentication.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Presentations/OrderList.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/States/DashboardState.dart';

class DashboardScreen extends StatelessWidget {
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
      body: BlocProvider(
        create: (_) => DashboardBloc(),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(PaddingConstant.large),
            child: Center(
              child: BlocBuilder<DashboardBloc, DashboardState>(
                  builder: (context, state) {
                if (state is UnloadedDashboard)
                  return CircularProgressIndicator();
                return Authentication(
                  authorized: true,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: SpacingConstant.large,
                    runSpacing: SpacingConstant.large,
                    children: [BookingList(), OrderList()],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
