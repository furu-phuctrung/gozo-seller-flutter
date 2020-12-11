import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Events/DashoardEvent.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Models/Booking.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Repositorties/BookingRepository.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/States/DashboardState.dart';


class DashboardBloc extends Bloc<DashboardEvent,DashboardState>{
  BookingRepository bookingRepository = BookingRepository();

  DashboardBloc() : super(UnloadedDashboard()){
    this.add(LoadDashboard());
  }

  Stream<LoadedDashboard> loadDashboard() async*{
    List<Booking> bookings = await bookingRepository.findAll();

    yield LoadedDashboard(bookings);
  }

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    switch(event.runtimeType){
      case LoadDashboard:
        yield* loadDashboard();
        break;
    }
  }



}