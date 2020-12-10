import 'package:gozo_flutter/Models/BaseModel.dart';

class Booking extends BaseModel{
  DateTime createdAt;
  String table;
  String id;

  Booking.fromJson(Map<String,dynamic> json){
    table = json['table'];
    id = json['id'];
    createdAt = DateTime.parse(json['createdAt']);
  }
}