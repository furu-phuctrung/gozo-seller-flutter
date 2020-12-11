import 'package:gozo_flutter/Widgets/DashboardScreen/Models/Booking.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Repositorties/BaseRepository.dart';


class BookingRepository extends BaseRepository<Booking>{
  BookingRepository() : super('https://5fb6559836e2fa00166a541a.mockapi.io/api/mock/shop/1/booking');

  @override
  Booking parseJson(Map<String, dynamic> json) {
    return Booking.fromJson(json);
  }
}