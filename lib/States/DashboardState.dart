import 'package:gozo_flutter/Models/Booking.dart';

abstract class DashboardState{

}

class UnloadedDashboard extends DashboardState{

}

class LoadedDashboard extends DashboardState{
  List<Booking> bookings ;
  LoadedDashboard(this.bookings);
}