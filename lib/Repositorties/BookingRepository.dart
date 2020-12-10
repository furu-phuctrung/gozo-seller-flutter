
import 'package:gozo_flutter/Models/Booking.dart';
import 'BaseRepository.dart';


class BookingRepository extends BaseRepository<Booking>{
  BookingRepository() : super('https://5fb6559836e2fa00166a541a.mockapi.io/api/mock/shop/1/booking');

  @override
  Booking parseJson(Map<String, dynamic> json) {
    return Booking.fromJson(json);
  }
}