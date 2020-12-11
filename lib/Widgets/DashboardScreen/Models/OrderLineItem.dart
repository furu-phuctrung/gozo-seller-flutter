import 'package:gozo_flutter/Widgets/DashboardScreen/Models/BaseModel.dart';

class OrderLineItem extends BaseModel {
  String productName;

  DateTime createdAt;

  String id;

  OrderLineItem.fromJson(Map<String,dynamic> json){
    productName = json['productName'];
    id = json['id'];
    createdAt = DateTime.parse(json['createdAt']);
  }
}
