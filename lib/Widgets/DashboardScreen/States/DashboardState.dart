import 'package:gozo_flutter/Widgets/DashboardScreen/Models/Booking.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Models/OrderLineItem.dart';

abstract class DashboardState {}

class UnloadedDashboard extends DashboardState {}

class LoadedDashboard extends DashboardState {
  List<Booking> bookings = [];
  List<OrderLineItem> orderLineItems = [];
  LoadedDashboard({this.bookings, this.orderLineItems});
}
